cmake_minimum_required(VERSION 3.5.0)
project(library VERSION 0.1.0 LANGUAGES C CXX)

add_library(library library.cpp)

include(CTest)
enable_testing()

