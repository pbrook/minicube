extern volatile bool page_stall;

#define NUM_FRAMES 2

extern uint8_t framebuffer[];
extern const uint8_t *display_framebuffer;
extern uint8_t *write_framebuffer;

void set_pixel(int x, int y, int z, int color);

void dbg(bool);

bool do_serial_data(void);
