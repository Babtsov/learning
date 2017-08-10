Simple demo of theads, join, and lambda
```cpp
#include <iostream>
#include <thread>

void hello() {
    std::cout << "Hey there!!\n";
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::thread t([]{
        hello();
        std::cout << "in between...\n";
        hello();
    });
    for (int i = 0; i < 100; i++) {
        std::cout << "Hello, World!\n";
    }
    t.join();
    return 0;
}
```
Apache - 'worker', 'event', 'prefork': https://serverfault.com/questions/383526/how-do-i-select-which-apache-mpm-to-use
