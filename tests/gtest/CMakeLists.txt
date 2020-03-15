
#call conan configuration
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(sf-gtest test.cpp)

target_link_libraries(sf-gtest PRIVATE spherical-flame ${CONAN_LIBS})
