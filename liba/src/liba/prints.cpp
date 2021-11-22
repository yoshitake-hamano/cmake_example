#include <iostream>
#include "libaa/libaa.h"

void printHello()
{
    std::cout << "Hello World" << std::endl;
}

void printAdd12()
{
    int sum = add(1, 2);
    std::cout << "add(1, 2) returns " << sum << std::endl;
}
