add_executable(threadx-app main.cpp)
target_compile_features(threadx-app PRIVATE cxx_std_17)

target_link_libraries(threadx-app PRIVATE spherical-flame)
