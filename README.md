$1-Create an out-of-source build folder
>$ mkdir build

$2-Generate the build system using cmake
>$ cd build
>$ cmake ..
✦or directly by specifing the output build (since CMake 3.13)
>$ cmake -S . -B build

$3-Build the project using make
>$ make

$4-Launch tests in more Verbose mode
>$ ctest -VV

$5-The Valgrind Quick Start Guide
✦see http://valgrind.org/docs/manual/quick-start.html
✦running your program under Memcheck
>$ valgrind --leak-check=yes ./myprog arg1 arg2

$6-Compile with Debug option
>$ cmake -DCMAKE_BUILD_TYPE=Debug ..
