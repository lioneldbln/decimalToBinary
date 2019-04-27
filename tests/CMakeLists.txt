cmake_minimum_required(VERSION 3.2.2)

project(decimalToBinaryTests)

find_package(Threads REQUIRED)

include_directories(./ ../inc)

file(GLOB SOURCES "*.cpp" "../src/*.cpp")

add_executable(decimalToBinaryTests ${SOURCES})

target_link_libraries(decimalToBinaryTests
                                gmock
								gmock_main
								gtest
								gtest_main
								${CMAKE_THREAD_LIBS_INIT})

add_test(NAME decimalToBinaryTests COMMAND $<TARGET_FILE:decimalToBinaryTests>)
