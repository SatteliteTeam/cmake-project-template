add_executable(linux-app main.cpp)
target_compile_features(linux-app PRIVATE cxx_std_17)

target_link_libraries(linux-app PRIVATE spherical-flame)
