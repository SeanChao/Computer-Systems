#include <iostream>

struct str{
    int a[2];
    double d;
};

double fun(int i) {
    str s;
    s.a[i] = 1073741824;
    s.d = 3.14;
    return s.d;
}

int main() {
    std::cout << fun(0) << '\n';
    std::cout << fun(1) << '\n';
    std::cout << fun(2) << '\n';
    std::cout << fun(3) << '\n';
    std::cout << fun(4) << '\n';
    std::cout << fun(6) << '\n';
    return 0;
}