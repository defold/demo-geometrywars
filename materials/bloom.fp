varying vec4 position;
varying vec2 var_texcoord0;

uniform sampler2D BLUR_TEX;
uniform sampler2D TEX;

void main()
{
    // Basic hackish bloom...
    vec4 blur_sample = texture2D(BLUR_TEX, var_texcoord0.xy);
    vec4 sample = texture2D(TEX, var_texcoord0.xy);
    vec4 bloom = blur_sample * 1.3;
    sample = sample * (1.0 - clamp(bloom, 0.0, 1.0));
    gl_FragColor = sample + bloom;          
}
