uniform sampler2D T;
uniform vec4 params;

varying vec2 var_texcoord0;

void main()
{
    vec4 sum = vec4(0.0);
    vec2 offset = params.xy;
    sum += texture2D(T, var_texcoord0 - offset) * params.z;
    sum += texture2D(T, var_texcoord0) * params.w;
    sum += texture2D(T, var_texcoord0 + offset) * params.z;

    gl_FragColor = sum;
    gl_FragColor.w = 1.0;
}
