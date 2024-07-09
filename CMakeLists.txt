# language: CMake

# ---------------------------------     Project setup      ---------------------------------
cmake_minimum_required(VERSION 3.20)

project(cmake_eval_calculator LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

# include file with extra project paths
include(paths.cmake)

include(${MAIN_DIR}/main.cmake)

main()