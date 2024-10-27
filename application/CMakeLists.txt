cmake_minimum_required(VERSION 3.5.0)
project(application VERSION 0.1.0 LANGUAGES C CXX)

add_subdirectory(MainApp)

add_executable(application main.cpp)

target_link_libraries(application PUBLIC MainApp)

include(CTest)
enable_testing()

install(TARGETS application DESTINATION bin)

