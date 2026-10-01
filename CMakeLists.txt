cmake_minimum_required(VERSION 3.12)

project(PolyFit)

option(POLYFIT_BUILD_STATIC_LIBS "Build statis libaries" OFF)

if (POLYFIT_BUILD_STATIC_LIBS)
    set(POLYFIT_LIB_TYPE STATIC)
else ()
    set(POLYFIT_LIB_TYPE SHARED)
endif()

set(POLYFIT_ROOT_DIR  ${CMAKE_CURRENT_LIST_DIR})
add_subdirectory(code)


