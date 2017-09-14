varying mediump vec4 var_pos;
varying mediump vec2 var_texcoord0;
varying lowp vec4 var_face_color;
varying lowp vec4 var_outline_color;
varying lowp vec4 var_shadow_color;
varying mediump vec4 var_sdf_params;
uniform lowp sampler2D texture;
uniform lowp vec4 texture_size_recip;
uniform mediump vec4 config;

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
    lowp float distance = texture2D(texture, var_texcoord0).x;

    lowp float sdf_edge = var_sdf_params.x;
    lowp float sdf_outline = var_sdf_params.y;
    lowp float sdf_smoothing = var_sdf_params.z;
    
    lowp float alpha = smoothstep(sdf_edge - sdf_smoothing, sdf_edge + sdf_smoothing, distance);
    lowp float outline_alpha = smoothstep(sdf_outline - sdf_smoothing, sdf_outline + sdf_smoothing, distance);
    lowp vec4 color = mix(var_outline_color, var_face_color, alpha);
    
    vec4 outline = vec4(hsv2rgb(vec3(config.x + var_pos.x, 1.0, 1.0)), 1.0) * var_outline_color.w;
    gl_FragColor = mix(mix(vec4(0, 0, 0, 0), outline, outline_alpha), vec4(0), alpha);
}
