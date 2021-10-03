#version 450

layout(location = 0) out vec4 outColor;

// The values come from 'shader.vert'
layout(location = 0) in vec3 fragColor;


//
//
//
// The 'main' function is invoked for every fragment.
//
//
//
// Fragment Shaders
// - to produce a color for the framebuffer(s)
// - to produce a depth for the framebuffer(s)
// - there's NO BUILT-IN variable to OUTPUT a color 
//   for the current fragment
// - I have to specify my OWN output variable for each
//   framebuffer where the 'layout(location = 0)' modifier
//   specified the index of the framebuffer
// - 
// - 
//
// Colors are 4-component vectors:
// - R, G, B, A channels
// - range [0, 1]
//
//
void main() {
    // Simple fragment shader that outputs the color RED
    // for the entire triangle:
    //
    //outColor = vec4(1.0, 0.0, 0.0, 1.0); // color RED
    //
    // The color RED is written to this 'outColor' variable
    // that is linked to the first (and only) framebuffer
    // and index '0'
    //

    outColor = vec4(fragColor, 1.0); // from shader vertex
}
