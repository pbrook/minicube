#include <mbed.h>

#include "CubeSerial.h"
#include "minicube.h"

//Virtual serial port over USB
CubeSerial serial(0x1f00, 0x2012, 0x0001);

static uint8_t serial_board;
static enum {
    SM_IDLE,
    SM_READY,
    SM_ACTIVE
} serial_mode = SM_IDLE;

volatile bool page_stall;
static bool offscreen;
static bool dirty;

static void
pixel_data(uint8_t board, int offset, uint8_t r, uint8_t g, uint8_t b)
{
    int x;
    int y;
    int z;

    if (board == 0xff) {
        pixel_data(0, offset, r, g , b);
        pixel_data(1, offset, r, g , b);
        pixel_data(2, offset, r, g , b);
        pixel_data(3, offset, r, g , b);
        return;
    }
    x = offset & 7;
    x = 7 - x;
    y = (board << 1) | (((offset >> 3) & 1) ^ 1);
    y = 7 - y;
    z = (offset >> 4) ^ 1;

    set_pixel(x, y, z, (r << 16) | (g << 8) | b);
}

static void
set_page(unsigned int display, unsigned int write)
{
    display %= NUM_FRAMES;
    write %= NUM_FRAMES;
    display_framebuffer = framebuffer + display * 8*8*8*3;
    write_framebuffer = framebuffer + write * 8*8*8*3;
    offscreen = display != write;
    dirty = true;
    // Stall subsquent commands until the end of the current update.
    page_stall = true;
}

static inline uint8_t
next_byte(void)
{
    uint8_t c;
    c = serial.get_char();
    return c;
}

/* Returns false if no data to process.  */
bool
do_serial_data(void)
{
    uint8_t cmd;
    uint8_t d0;
    uint8_t d1;
    uint8_t d2;
    int n;

    if (page_stall) {
	dbg(false);
        return false;
    }
    n = serial.available();
    if (n < 4)
        return false;

    while (n >= 4) {
        cmd = next_byte();
        n--;
        if (cmd >= 0xf0) {
            serial_mode = SM_IDLE;
            continue;
        }
        d0 = next_byte();
        d1 = next_byte();
        d2 = next_byte();
        n -= 3;
        if (cmd < 0xd0 && serial_mode != SM_ACTIVE) {
            continue;
        }
        if (cmd == 0xe0) {
            if (d0 == 0xf0 && d1 == 0xf1 && d2 == 0xf2) {
                serial_mode = SM_READY;
            } else {
                serial_mode = SM_IDLE;
            }
            continue;
        }
        if (serial_mode == SM_IDLE) {
            continue;
        }
        if (cmd < 0x80) {
            pixel_data(serial_board, cmd, d0, d1, d2);
            if (!offscreen) {
                dirty = true;
            }
        } else if (cmd == 0x80) {
            /* Set framebuffer (page flip).  */
            set_page(d1, d2);
            if (page_stall) {
                return true;
            }
        } else if (cmd == 0xc0) {
            /* Set brightness (ignored) */
        } else if (cmd == 0xe1) {
            if (d0 == 0xff || d0 < 4) {
                serial_mode = SM_ACTIVE;
                serial_board = d0;
            } else {
                serial_mode = SM_READY;
            }
        } else {
            serial_mode = SM_IDLE;
        }
    }
    return true;
}
