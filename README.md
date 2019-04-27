$1-Create a folder build
>$ mkdir build

$2-Build the project using cmake
>$ cd build
>$ cmake ..

$3-Build (compilation + link) the project using make
>$ make

$4-Launch tests
>$ ctest -VV

$1-The Valgrind Quick Start Guide
✦see http://valgrind.org/docs/manual/quick-start.html
✦running your program under Memcheck
>$ valgrind --leak-check=yes ./myprog arg1 arg2

$2-Compile with Debug option
>$ cmake -DCMAKE_BUILD_TYPE=Debug ..

