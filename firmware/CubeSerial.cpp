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

#include "stdint.h"
#include "CubeSerial.h"
#include "minicube.h"

void CubeSerial::read_packet() {
    uint32_t size;
    uint32_t pos;

    pos = write_pos;
    readEP(&buf[pos], &size);
    pos = (pos + size) & SERIAL_BUF_MASK;
    if ((pos > 0) && (pos < size)) {
        memcpy(buf, &buf[SERIAL_BUF_SIZE], pos);
    }
    write_pos = pos;
}

bool CubeSerial::EP2_OUT_callback() {
    int bytes;
    
    bytes = (write_pos - read_pos) & SERIAL_BUF_MASK;
    if (bytes >= SERIAL_BUF_SIZE - MAX_PACKET_SIZE_EPBULK) {
        pending = 1;
        return false;
    }
    read_packet();

    return true;
}
