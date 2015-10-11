#include "mbed.h"

#include "minicube.h"

DigitalOut myled(LED_RED);
DigitalOut dbgled(LED_BLUE, 1);
DigitalIn mybutton(SW2, PullUp);

DigitalOut blank(D5, 1);
DigitalOut xlat(D4, 0);
DigitalOut mode(D3, 0);
DigitalIn sense_v(D8);

DigitalOut addr0(A5);
DigitalOut addr1(A4);
DigitalOut addr2(A3);
DigitalOut addr3(A2);
DigitalOut addr3in(A1);
DigitalOut addr_en(A0);

PwmOut gsclk(D6);

void dbg(bool on)
{
    dbgled = on ? 0 : 1;
}

const uint8_t cathode_lookup[] = {
    0x03, 0x05, 0x01, //0
    0x09, 0x0b, 0x07, //1
    0x0f, 0x10, 0x0d, //2
    0x14, 0x16, 0x12, //3
    0x1b, 0x1d, 0x19, //4
    0x20, 0x22, 0x1f, //5
    0x26, 0x28, 0x24, //6
    0x2c, 0x2e, 0x2a, //7
    0x02, 0x00, 0x04, //0
    0x08, 0x06, 0x0a, //1
    0x0e, 0x0c, 0x11, //2
    0x15, 0x13, 0x17, //3
    0x1a, 0x18, 0x1c, //4
    0x21, 0x1e, 0x23, //5
    0x27, 0x25, 0x29, //6
    0x2d, 0x2b, 0x2f, //7
};

uint8_t framebuffer[NUM_FRAMES * 8*8*8*3];
const uint8_t *display_framebuffer = framebuffer;
uint8_t *write_framebuffer = framebuffer;

SPI ser = SPI(D11, D12, D13);

Timer t;

static uint8_t next_anode;

static void
gsclk_off()
{
    gsclk.pulsewidth_us(0);
}
static void
gsclk_on()
{
    gsclk.pulsewidth_us(2);
}

static void
splat_pixels()
{
    uint8_t val1;
    uint8_t val2;
    const uint8_t *p;
    const uint8_t *end;

    page_stall = false;
    p = display_framebuffer + next_anode * 8 * 8 * 3;
    end = p + 8 * 8 * 3;
    while (p != end) {
        val1 = *(p++);
        val2 = *(p++);
        ser.write(val1 >> 4);
        ser.write(val1 << 4);
        ser.write(val2);
    }
}

static void
latch_pixels(void) {
    addr_en = 1;
    addr0 = (next_anode & 1) != 0;
    addr1 = (next_anode & 2) != 0;
    addr2 = (next_anode & 4) != 0;
    addr_en = 0;
    gsclk_off();
    blank = 1;
    xlat = 1;
    wait_us(1);
    xlat = 0;
    wait_us(1);
    blank = 0;
    gsclk_on();
    next_anode = (next_anode + 1) & 7;
}

static void
write_dc(void)
{
    int chip;
    int i;
    uint8_t val = 0x40;

    mode = 1;
    wait_ms(5);
    ser.write(0);
    for (chip = 0; chip < 12; chip++) {
        for (i = 0; i < 4; i++) {
            ser.write((val & 0xfc) | (val >> 6));
            ser.write(((val << 2) & 0xf0) | (val >> 4));
            ser.write(((val << 4) & 0xc0) | (val >> 2));
        }
    }
    wait_us(1);
    xlat = 1;
    wait_us(1);
    xlat = 0;
    wait_us(1);
    mode = 0;
}

void
set_pixel(int x, int y, int z, int color)
{
    int cpos, chiprow;
    int base;
    int fboffset;
    cpos = (x + (y & 1) * 8) * 3;
    chiprow = (y >> 1) ^ 3;
    base = chiprow * 16 * 3 + z * 8 * 8 * 3;
    fboffset = base + cathode_lookup[cpos];
    write_framebuffer[fboffset] = (color >> 16) & 0xff;
    fboffset = base + cathode_lookup[cpos + 1];
    write_framebuffer[fboffset] = (color >> 8) & 0xff;
    fboffset = base + cathode_lookup[cpos + 2];
    write_framebuffer[fboffset] = color & 0xff;
}

int main() {
    int frames = 0;
    if (!mybutton)
        while(1);
    dbg(true);
    myled=1;
    addr_en = 1;
    addr3 = 0;
    addr3in = 1;
    gsclk.period_us(3);
    gsclk_off();
    wait_ms(5);

    ser.format(8, 0);
    ser.frequency(10000000);
    write_dc();

    t.start();
    while(1) {
        int n;
        splat_pixels();
        while (true) {
            n = 1000 - t.read_us();
            if (n <= 0)
                break;
            if (!do_serial_data()) {
                myled = 0;
                wait_us(n);
                myled = 1;
            }
        }
        t.reset();
        latch_pixels();
        frames++;
        if (frames == 1000) {
            frames = 0;
            //draw_frame();
        }
    }
}
