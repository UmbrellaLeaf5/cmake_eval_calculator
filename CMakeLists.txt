# language: CMake

# ---------------------------------     Project setup      ---------------------------------
cmake_minimum_required(VERSION 3.20)

project(cmake_eval_calculator)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

# Include file with extra project paths
include(paths.cmake)

# ---------------------------------     Project start      ---------------------------------
include(${MAIN_DIR}/main.cmake)

main()