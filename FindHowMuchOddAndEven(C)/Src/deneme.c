#include <stdio.h>

int deneme() {
    unsigned char *ptr = (unsigned char *)0x20000040;
    unsigned int sum_even = 0, sum_odd = 0;

    for (int i = 0; i < 16; i++) {
        unsigned char b = *ptr;
        unsigned char b1 = b >> 0;

        if (b1 & 0x01) {
            sum_odd += b;
        } else {
            sum_even += b;
        }

        ptr++;
    }

    unsigned int avg_even = sum_even / 8;
    unsigned int avg_odd = sum_odd / 8;

    printf("Average value of even numbers: %u\n", avg_even);
    printf("Average value of odd numbers: %u\n", avg_odd);

    return 0;
}
