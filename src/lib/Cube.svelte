<script>
	import { T, useFrame } from '@threlte/core';

	import {
		RoundedBoxGeometry,
		OrbitControls,
		interactivity,
		Instance,
		InstancedMesh
	} from '@threlte/extras';
	import { spring } from 'svelte/motion';
	import Circle from './Circle.svelte';

	let scale = spring(1);
	interactivity();
	let rotation = 0;
	useFrame((status, delta) => {
		rotation += delta / 2;
	});
</script>

//Camera
<T.PerspectiveCamera
	fov={15}
	makeDefault
	position={[10, 10, 10]}
	on:create={({ ref }) => {
		ref.lookAt(0, 0, 0);
	}}
>
	//OrbitControls
	<OrbitControls enableDamping enableZoom={false} enable={false} />
</T.PerspectiveCamera>

//Lights
<T.DirectionalLight position={[15, 10, 5]} intensity={0.75} />

//Mesh
<InstancedMesh
	rotation.y={rotation / 2}
	rotation.z={rotation / 2}
	scale={$scale}
	on:pointerenter={() => scale.set(1.5)}
	on:pointerleave={() => scale.set(1)}
>
	//Object
	<RoundedBoxGeometry args={[1, 1, 1]} radius={0.125} />
	<!-- <T.BoxGeometry args={[0.5, 0.5, 0.5]} /> -->

	//Material
	<T.MeshStandardMaterial color="#daf982" wireframe={false} />

	<Instance position.x={-1.115} />
	<Instance position.x={1.115} />
	<Instance position.x={0} scale={1.2} color="green" />
	<Instance position.y={1.115} />
	<Instance position.y={-1.115} />

	<Circle />
</InstancedMesh>
