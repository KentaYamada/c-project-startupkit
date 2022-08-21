#include "calc.h"
#include <stdlib.h>

int add(const int x, const int y) {
    return (x + y);
}

int subtraction(const int x, const int y) {
    return (x - y);
}

int multiplication(const int x, const int y) {
    return (x * y);
}

int division(const int x, const int y) {
    if (x == 0) {
        exit(EXIT_FAILURE);
    }

    return (x / y);
}
