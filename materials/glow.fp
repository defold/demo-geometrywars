varying vec4 position;
varying vec2 var_texcoord0;

uniform sampler2D TEXTURE0;
uniform sampler2D TEXTURE1;
uniform sampler2D TEXTURE2;
uniform sampler2D TEXTURE3;
uniform sampler2D TEXTURE4;

void main()
{
	vec4 sum_post = vec4(0.0);
    sum_post += texture2D(TEXTURE1, var_texcoord0.xy);
    sum_post += texture2D(TEXTURE2, var_texcoord0.xy);
    sum_post += texture2D(TEXTURE3, var_texcoord0.xy);
    sum_post += texture2D(TEXTURE4, var_texcoord0.xy);
    float glow = 0.7;
    gl_FragColor = texture2D(TEXTURE0, var_texcoord0.xy) + glow * clamp(sum_post, vec4(0.0), vec4(1.0));
    gl_FragColor.w = 1.0;          
}
