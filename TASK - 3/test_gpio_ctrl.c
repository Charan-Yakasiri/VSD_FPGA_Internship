#include <stdint.h>
#include "io.h"

#define IO_GPIO_DATA   32   // bit 3, offset 32
#define IO_GPIO_DIR    64   // bit 4, offset 64
#define IO_GPIO_READ   128  // bit 5, offset 128

void print_string(const char*); void print_hex(unsigned int);

void main() {
    // Set lower 8 bits as outputs
    IO_OUT(IO_GPIO_DIR,  0xFF);
    IO_OUT(IO_GPIO_DATA, 0xAA);  // alternating 1s: 10101010
    
    uint32_t readback = IO_IN(IO_GPIO_READ);
    print_string("DIR=0xFF DATA=0xAA READ=");
    print_hex(readback);   // expect 0xAA (output pins reflect DATA)
    print_string("\n");
    
    // Change direction: upper 4 bits to input
    IO_OUT(IO_GPIO_DIR,  0x0F);
    IO_OUT(IO_GPIO_DATA, 0xFF);
    readback = IO_IN(IO_GPIO_DATA);
    print_string("DATA readback=FF: ");
    print_hex(readback);   // expect 0xFF (data_reg unchanged)
    print_string("\n");
    
    print_string("GPIO ctrl test done!\n");
    while(1);
}