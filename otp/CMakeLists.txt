set(tools /opt/bcc-2.1.1-gcc)
set(CMAKE_C_COMPILER ${tools}/bin/sparc-gaisler-elf-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/sparc-gaisler-elf-g++)

add_executable(otp main.cpp)
target_compile_features(otp PRIVATE cxx_std_17)

target_link_libraries(otp PRIVATE main-lib-project-threadx)
