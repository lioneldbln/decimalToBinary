cmake_minimum_required(VERSION 3.2.2)

project(operationsTests)

find_package(Threads REQUIRED)

include_directories(./ ../inc)

file(GLOB SOURCES "*.cpp" "../src/*.cpp")

add_executable(operationsTests ${SOURCES})

target_link_libraries(operationsTests
                                gmock
								gmock_main
								gtest
								gtest_main
								${CMAKE_THREAD_LIBS_INIT})

add_test(NAME operationsTests COMMAND $<TARGET_FILE:operationsTests>)
