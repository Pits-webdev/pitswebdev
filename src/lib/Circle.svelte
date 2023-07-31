<script>
	import { T } from '@threlte/core';
	import * as Three from 'three';
	import vertex from '../lib/shaders/vertex.glsl';
	import fragment from '../lib/shaders/fragment.glsl';

	const circlepos = [0, 0, -2];

	let count = 0;
</script>

//Light
<T.PointLight position={[0, 0, 10]} />

<T.Mesh
	geometry={new Three.IcosahedronGeometry(0.5, 5)}
	material={new Three.ShaderMaterial({
		uniforms: {
			time: { value: count }
		},
		vertexShader: vertex,
		fragmentShader: fragment,
		wireframe: true
	})}
	position={circlepos}
	receiveShadow
	castShadow
/>
