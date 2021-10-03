#pragma once

#include <cstdint>

#include <algorithm>
#include <fstream>

#include <iostream>

#include <memory>

#include <optional>

#include <map>
#include <vector>
#include <set>


#define VK_USE_PLATFORM_WIN32_KHR
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#define GLFW_EXPOSE_NATIVE_WIN32
#include <GLFW/glfw3native.h>


#define GLM_FORCE_RADIANS
#define GLM_FORCE_DEPTH_ZERO_TO_ONE
#include <glm/glm.hpp>


#include "linmath.h" // https://github.com/datenwolf/linmath.h


#include <vulkan/vulkan.hpp>
