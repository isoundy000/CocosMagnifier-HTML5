// http://www.cocos2d-iphone.org

#ifdef GL_ES
precision lowp float;
#endif

varying vec2 v_texCoord;
uniform sampler2D CC_Texture0;

void main(void) {
	vec4 normalColor = texture2D(CC_Texture0, v_texCoord).rgba;
	float grayColor = dot(normalColor.rgb, vec3(0.299, 0.587, 0.114));
	gl_FragColor = vec4(grayColor, grayColor, grayColor, normalColor.a);
}