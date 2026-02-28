varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 ore_color; // RGB color (0–1)

void main() {
    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    // Multiply sprite brightness with ore color
    vec3 colored = base.rgb * ore_color;

    gl_FragColor = vec4(colored, base.a) * v_vColour;
}