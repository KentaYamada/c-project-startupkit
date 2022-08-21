#include "calc.h"
#include <stdio.h>

int main(int argc, char* argv) {
    puts("Sample program.");
    printf("1 + 1 = %d\n", add(1, 1));
    printf("2 - 1 = %d\n", subtraction(2, 1));
    printf("3 * 2 = %d\n", multiplication(3, 2));
    printf("10 / 2 = %d\n", division(10, 2));
    return 0;
}
