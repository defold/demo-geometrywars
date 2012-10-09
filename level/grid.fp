varying vec4 position;
varying vec2 var_texcoord0;

uniform sampler2D texture0;

void main()
{
	vec4 c = texture2D(texture0, var_texcoord0.xy);
	gl_FragColor = c;
}
