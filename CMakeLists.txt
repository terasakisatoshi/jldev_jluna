cmake_minimum_required(VERSION 3.20)
project(hello)

find_package(jluna REQUIRED)

add_executable(main main.cpp)
add_library(libjulia SHARED IMPORTED)
set_target_properties(libjulia PROPERTIES IMPORTED_LOCATION /usr/local/julia/lib/libjulia.so)

add_library(libjluna SHARED IMPORTED)
set_target_properties(libjluna PROPERTIES IMPORTED_LOCATION /usr/local/lib/libjluna.so)

target_link_libraries(main PRIVATE 
    libjluna
    libjulia
)
target_include_directories(main PRIVATE 
    /usr/local/include/jluna 
    /usr/local/julia/include/julia
)
target_compile_features(main PRIVATE cxx_std_20)
