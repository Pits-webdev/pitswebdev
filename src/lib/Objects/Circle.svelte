<script>
	import { T, useFrame } from '@threlte/core';
	import * as Three from 'three';
	import vertex from '$lib/assets/shaders/vertex.glsl';
	import fragment from '$lib/assets/shaders/fragment.glsl';

	let tick = 0;

	useFrame(() => {
		tick += 0.1;
	});
</script>

//Light
<T.PointLight position={[0, 0, 10]} />

<T.Mesh
	geometry={new Three.IcosahedronGeometry(2, 7)}
	material={new Three.ShaderMaterial({
		uniforms: {
			time: { value: tick }
		},
		vertexShader: vertex,
		fragmentShader: fragment
		//wireframe: true
	})}
	receiveShadow
	castShadow
/>
