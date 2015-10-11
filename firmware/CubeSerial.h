/* Copyright (c) 2014 Paul Brook, MIT License
*
* Permission is hereby granted, free of charge, to any person obtaining a copy of this software
* and associated documentation files (the "Software"), to deal in the Software without
* restriction, including without limitation the rights to use, copy, modify, merge, publish,
* distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
* Software is furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all copies or
* substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
* BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
* NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
* DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#ifndef CUBESERIAL_H
#define CUBESERIAL_H

#include "USBCDC.h"
#include "Stream.h"

#define SERIAL_BUF_SIZE 4096
#define SERIAL_BUF_MASK (SERIAL_BUF_SIZE - 1)

class CubeSerial: public USBCDC {
public:

    /**
    *   Constructor
    *
    * @param vendor_id Your vendor_id (default: 0x1f00)
    * @param product_id Your product_id (default: 0x2012)
    * @param product_release Your preoduct_release (default: 0x0001)
    *
    */
    CubeSerial(uint16_t vendor_id = 0x1f00, uint16_t product_id = 0x2012, uint16_t product_release = 0x0001): USBCDC(vendor_id, product_id, product_release, false) {
        read_pos = 0;
        write_pos = 0;
        pending = 0;
    };


    int available() {
        int n = (write_pos - read_pos) & SERIAL_BUF_MASK;
        if (pending && n < (SERIAL_BUF_SIZE / 2)) {
            __disable_irq();
            pending--;
            read_packet();
            __enable_irq();
            n = (write_pos - read_pos) & SERIAL_BUF_MASK;
        }
        return n;
    }
    
    bool connected() { return terminal_connected; }
    
    uint8_t get_char() {
        uint8_t c;
        int pos = read_pos;
        c = buf[pos];
        read_pos = (pos + 1) & SERIAL_BUF_MASK;
        return c;
    }

protected:
    virtual bool EP2_OUT_callback();

private:
    volatile int read_pos;
    volatile int write_pos;
    volatile int pending;
    uint8_t buf[SERIAL_BUF_SIZE + MAX_PACKET_SIZE_EPBULK];
    void read_packet();
};

#endif
