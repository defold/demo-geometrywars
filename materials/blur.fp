uniform sampler2D T;
uniform vec4 params;

varying vec2 var_texcoord0;

void main()
{
    // Horizontal gaussian blur
    vec4 sum = vec4(0.0);
    float sample_dist = params.x;
    sum += texture2D(T, vec2(var_texcoord0.x - 1.0 * sample_dist, var_texcoord0.y)) * 1.0/25.0;
    sum += texture2D(T, vec2(var_texcoord0.x - 0.75 * sample_dist, var_texcoord0.y)) * 2.0/25.0;
    sum += texture2D(T, vec2(var_texcoord0.x - 0.5 * sample_dist, var_texcoord0.y)) * 3.0/25.0;
    sum += texture2D(T, vec2(var_texcoord0.x - 0.25 * sample_dist, var_texcoord0.y)) * 4.0/25.0;
    sum += texture2D(T, vec2(var_texcoord0.x, var_texcoord0.y)) * 5.0/25.0;
    sum += texture2D(T, vec2(var_texcoord0.x + 0.25 * sample_dist, var_texcoord0.y)) * 4.0/25.0;
    sum += texture2D(T, vec2(var_texcoord0.x + 0.5 * sample_dist, var_texcoord0.y)) * 3.0/25.0;
    sum += texture2D(T, vec2(var_texcoord0.x + 0.75 * sample_dist, var_texcoord0.y)) * 2.0/25.0;
    sum += texture2D(T, vec2(var_texcoord0.x + 1.0 * sample_dist, var_texcoord0.y)) * 1.0/25.0;

    gl_FragColor = sum;
    gl_FragColor.w = 1.0;
}
