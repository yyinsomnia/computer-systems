cmake_minimum_required(VERSION 3.1)
project(computer_systems)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES main.cpp)
add_executable(computer_systems ${SOURCE_FILES} netp/tiny/cgi-bin/form.h netp/tiny/cgi-bin/form.c)