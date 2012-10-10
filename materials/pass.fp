varying vec4 position;
varying vec2 var_texcoord0;

uniform sampler2D DIFFUSE_TEXTURE;
uniform vec4 tint;

void main()
{
    gl_FragColor = texture2D(DIFFUSE_TEXTURE, var_texcoord0.xy);
    float amb = 0.05;
    gl_FragColor.xyz = clamp(gl_FragColor.xyz + vec3(amb, amb, amb), vec3(0, 0, 0), vec3(1, 1, 1));  
    //gl_FragColor.w = 1.0;
}
