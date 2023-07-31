uniform float time;
varying vec2 vUv;
varying vec3 vPosition;

void main() {
    vUv = uv;
    //vec3 pos = position;

	//vPosition = position;
	//pos.x += sin( (uv.y + time) * 5.0 ) / 0.4; 
	//pos.y += sin( time + pos.x * 0.95) / 4.0;
	//pos.z += cos( time + pos.x * 0.95 ) / 4.0;

	//gl_Position = projectionMatrix * modelViewMatrix * vec4( pos, 1.0 );
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position.x, position.y, position.z, 1.0);
}