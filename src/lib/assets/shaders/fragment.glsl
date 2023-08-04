uniform float time;
uniform sampler2D texture1;

varying vec2 vUv;



void main() {

	//circle Color change
	//gl_FragColor = vec4( sin(time * 0.05), cos(time * 0.05) , tan(time * 0.005),  1.0 );

	//texture
	 gl_FragColor = texture(texture1, vUv);


	//default color
	//gl_FragColor = vec4( .5, 1.0 , .5,  1.0 );
}