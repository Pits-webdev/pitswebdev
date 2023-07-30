<script>
	import { T, extend, useFrame, useThrelte } from '@threlte/core';
	import { interactivity } from '@threlte/extras';
	import { spring } from 'svelte/motion';
	//import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls';

	interactivity();
	const scale = spring(1);

	let rotation = 0;
	useFrame((state, delta) => {
		rotation += delta;
	});
</script>

<T.PerspectiveCamera
	fov={15}
	makeDefault
	position={[10, 10, 10]}
	on:create={({ ref }) => {
		ref.lookAt(1, 1, 0);
	}}
/>

<T.DirectionalLight position={[3, 2, 10]} intensity={0.75} />

<T.Mesh
	rotation.y={rotation}
	position.y={1}
	scale={$scale}
	on:pointerenter={() => scale.set(1.5)}
	on:pointerleave={() => scale.set(1)}
>
	<T.BoxGeometry args={[1, 1, 1, 10, 10, 10]} />
	<T.MeshStandardMaterial color="#daf982" wireframe={false} />
</T.Mesh>
