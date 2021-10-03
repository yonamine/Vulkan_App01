@echo off

set TOP=E:\OpenGL and Vulkan\Vulkan01
set VULKAN_HOME=C:\VulkanSDK\1.2.189.2

echo "Compiling shaders..."

echo "1. Vertex Shader file"
"%VULKAN_HOME%\Bin\glslc.exe" assets\shader.vert -o "%TOP%\out\build\x64-Debug\vert.spv"

echo "2. Fragment Shader file"
"%VULKAN_HOME%\Bin\glslc.exe" assets\shader.frag -o "%TOP%\out\build\x64-Debug\frag.spv"

echo "Done!"
pause

@echo on
