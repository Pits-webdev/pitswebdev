<script>
	import { T } from '@threlte/core';
	import * as Three from 'three';
	import vertex from '$lib/assets/shaders/vertex.glsl';
	import fragment from '$lib/assets/shaders/fragment.glsl';

	let tick = 0;
</script>

<T.Mesh
	geometry={new Three.PlaneGeometry(5, 5)}
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
