# CMakeList.txt : CMake project for Vulkan01, include source and define
# project specific logic here.
#
# cmake "-DCMAKE_TOOLCHAIN_FILE=E:/github/vcpkg/scripts/buildsystems/vcpkg.cmake"
cmake_minimum_required(VERSION 3.8)

project("Vulkan01")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(TARGET_NAME "Vulkan01")
set(VULKAN_SDK "c:/VulkanSDK/1.2.189.2")

find_package(glfw3 CONFIG REQUIRED)
find_package(glm CONFIG REQUIRED)
find_package(unofficial-vulkan-memory-allocator CONFIG REQUIRED)

add_executable(${TARGET_NAME} "Vulkan01.cpp" "Vulkan01.h")

set(LIBRARIES
    glm::glm
    glfw
    vulkan-1.lib
    VkLayer_utils.lib
    unofficial::vulkan-memory-allocator::vulkan-memory-allocator
)

target_include_directories(${TARGET_NAME} PRIVATE "${VULKAN_SDK}/Include")
target_link_directories(${TARGET_NAME} PRIVATE "${VULKAN_SDK}/Lib")
target_compile_options(${TARGET_NAME} PRIVATE /W4 /WX-)
target_link_libraries (${TARGET_NAME} PRIVATE ${LIBRARIES})


# TODO: Add tests and install targets if needed.
