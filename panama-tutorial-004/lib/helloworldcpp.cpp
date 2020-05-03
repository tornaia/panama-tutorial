#include "helloworldcpp.h"

#include <iostream>
#include <string>
#include <stdio.h>

extern int main() {
    std::cout << "Hello World from c++/main!" << std::endl;
    fflush(stdout);
    return 0;
}

extern int main2() {
    std::cout << "Hello World from c++/main2!" << std::endl;
    fflush(stdout);
    return 0;
}