#include<stdint.h>
#include "io.h"

#define IO_GPIO 32

void print_string(const char* s);
void print_hex(unsigned int val);

void main(){
    IO_OUT(IO_GPIO,0xABCD1234);
    uint32_t val = IO_IN(IO_GPIO);
    print_string("GPIO write 0xABCD1234, readback: ");
    print_hex(val);
    print_string("\n");

    IO_OUT(IO_GPIO,0x00000000);
    val = IO_IN(IO_GPIO);
    print_string("GPIO Write 0, readback: ");
    print_hex(val);
    print_string("\n");

    IO_OUT(IO_LEDS, 0b00101);
    print_string("GPIO test done! \n");
    while(1);
}


