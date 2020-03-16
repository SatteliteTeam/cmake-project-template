cmake_minimum_required(VERSION 3.11...3.16)

project(SphericalFlame
    VERSION 0.1
    DESCRIPTION "a template project"
    LANGUAGES CXX)

# Only do these if this is the main project, and not if it is included through add_subdirectory
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)

    # Optionally set things like CMAKE_CXX_STANDARD, CMAKE_POSITION_INDEPENDENT_CODE here
    
    # Let's ensure -std=c++xx instead of -std=g++xx
    set(CMAKE_CXX_EXTENSIONS OFF)

    # Let's nicely support folders in IDE's
    set_property(GLOBAL PROPERTY USE_FOLDERS ON)
endif()

add_subdirectory(threadx-app)
add_subdirectory(linux-app)
add_subdirectory(otp)
add_subdirectory(spherical-flame/src)

# Testing only available if this is the main app
# Emergency override MODERN_CMAKE_BUILD_TESTING provided as well
if((CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME OR MODERN_CMAKE_BUILD_TESTING) AND BUILD_TESTING)
    add_subdirectory(tests/gtest)
    include(CTest)
    add_test(NAME Gtest COMMAND sf-gtest)
endif()

