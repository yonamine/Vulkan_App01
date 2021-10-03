# C++ / GLFW / Vulkan API
Vulkan Trainning: How to develop a simple app using C++, GLFW and Vulkan

# Notes

1. Shader Code in Vulkan
- represented as Bytecode format (SPIR-V)
- used with Vulkan and OpenCL
- tool GLSL to SPIR-V:
- 'glslc.exe' by Google (?)

2. How to convert GLSL to SPIR-V

```bash
C:/VulkanSDK/x.x.x.x/Bin32/glslc.exe shader.vert -o vert.spv
C:/VulkanSDK/x.x.x.x/Bin32/glslc.exe shader.frag -o frag.spv
```


