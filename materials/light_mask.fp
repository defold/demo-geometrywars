varying vec4 position;
varying vec2 var_texcoord0;

uniform sampler2D DIFFUSE_TEXTURE;
uniform vec4 tint;

void main()
{
    float c = texture2D(DIFFUSE_TEXTURE, var_texcoord0.xy).x;
    gl_FragColor = vec4(1, 1, 1, c) * tint * 0.5;
}
