<script>
	import * as Three from 'three';
	import { T, useLoader, useFrame } from '@threlte/core';
	import { TextureLoader } from 'three';

	import vertex from '$lib/assets/shaders/vertex.glsl';
	import fragment from '$lib/assets/shaders/fragment.glsl';

	import img1 from '../assets/images/texture1.jpg';

	const texture1 = useLoader(TextureLoader).load(img1);

	let time = 0;

	useFrame((state, delta) => {
		time += 0.1;
	});
</script>

{#if $texture1}
	<T.Mesh
		geometry={new Three.PlaneGeometry(12, 7, 20, 20)}
		material={new Three.ShaderMaterial({
			uniforms: {
				time: { type: 'f', value: time },
				texture1: { type: 't', value: $texture1 }
			},
			vertexShader: vertex,
			fragmentShader: fragment
			//wireframe: true
		})}
		receiveShadow
		castShadow
	/>
{/if}

<!-- <T.Mesh>
	<T.PlaneGeometry args={[8, 5]} />
	{#if $texture1}
		<T.MeshBasicMaterial map={$texture1} />
	{/if}
</T.Mesh> -->
