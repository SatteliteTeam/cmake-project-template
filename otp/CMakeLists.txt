add_executable(otp main.cpp)
target_compile_features(otp PRIVATE cxx_std_17)

target_link_libraries(otp PRIVATE spherical-flame)
