#include <iostream>
#include <main-lib-project/processes.hpp>

int main(int argc, char const *argv[])
{
    std::cout << "Hello from threadx" << std::endl;
    MainLib::run_process();
    return 0;
}




