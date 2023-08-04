uniform float time;

varying vec2 vUv;


void main(){
    vUv = uv;
    vec3 pos = position;

    pos.x += sin( (pos.y + time) * 0.75 ) * 0.0001; 
    pos.y += sin( time + pos.x * 1.0) * 0.15;
    pos.z += sin( time + pos.x * 1.0) * 0.25;
   
 


    //gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0 );

    
    gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0);
}