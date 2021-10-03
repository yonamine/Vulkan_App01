#version 450

vec2 positions[3] = vec2[](
    vec2( 0.0, -0.5),
    vec2( 0.5,  0.5),
    vec2(-0.5,  0.5)
);

vec3 colors[3] = vec3[](
    vec3(1.0, 0.0, 0.0),
    vec3(0.0, 1.0, 0.0),
    vec3(0.0, 0.0, 1.0)
);

layout(location = 0) out vec3 fragColor;

//
// The 'main' function is invoked for every vertex.
//
// 'gl_VertexIndex' variable:
//        - built-in variable
//        - it contains the index of the current vertex
//          (usually) an index into the vertex buffer
//          (this case) an index into a hardcoded array of vertex data
//
// 'gl_Position' variable:
//        - built-in variable
//        - it works as the OUTPUT
//
//
void main() {
    gl_Position = vec4(positions[gl_VertexIndex], 0.0, 1.0);
    fragColor = colors[gl_VertexIndex];
}
