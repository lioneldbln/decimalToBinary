cmake_minimum_required(VERSION 3.2.2)

project(operations)

enable_testing()

set(CMAKE_CXX_STANDARD 11) #C++11...
set(CMAKE_CXX_STANDARD_REQUIRED ON) #... is required ...
set(CMAKE_CXX_EXTENSIONS OFF) #...without compiler extensions like gnu++11

add_compile_options(-Wall)

include_directories(./inc)

file(GLOB SOURCES "main.cpp" "./src/*.cpp")

add_executable(operations ${SOURCES})

add_subdirectory(tests)

add_custom_target(run   COMMAND operations
                        DEPENDS operations
                        WORKING_DIRECTORY ${CMAKE_PROJECT_DIR})
