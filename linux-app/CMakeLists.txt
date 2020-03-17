# Optionally glob, but only for CMake 3.12 or later:
file(GLOB HEADER_LIST CONFIGURE_DEPENDS "${CmakeExample_SOURCE_DIR}/main-lib-project/include/main-lib-project/*.hpp")
file(GLOB SRC_LIST CONFIGURE_DEPENDS "${CmakeExample_SOURCE_DIR}/main-lib-project/src/*.cpp")

# Make an automatic library - will be static or dynamic based on user setting
add_library(main-lib-project-linux ${SRC_LIST} ${HEADER_LIST})

# We need this directory, and users of our library will need it too
target_include_directories(main-lib-project-linux PUBLIC ${CmakeExample_SOURCE_DIR}/main-lib-project/include/)

# All users of this library will need at least C++11
target_compile_features(main-lib-project-linux PUBLIC cxx_std_11)

add_executable(linux-app main.cpp)
target_compile_features(linux-app PRIVATE cxx_std_17)

target_link_libraries(linux-app PRIVATE main-lib-project-linux)
