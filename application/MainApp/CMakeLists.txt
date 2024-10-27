cmake_minimum_required(VERSION 3.5.0)
project(MainApp VERSION 0.1.0 LANGUAGES C CXX)

add_library(MainApp MainApp.cpp)

include(CTest)
enable_testing()

install(TARGETS MainApp DESTINATION bin)
