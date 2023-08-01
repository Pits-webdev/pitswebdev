<script>
	import { T } from '@threlte/core';
	import Cube from '$lib/Objects/Cube.svelte';
	import Circle from '$lib/Objects/Circle.svelte';
	import Plane from '$lib/Objects/Plane.svelte';

	/* 	on:create={({ ref }) => {
		ref.lookAt(0, 1, 0);
	}} */
</script>

//Camera
<T.PerspectiveCamera makeDefault position={[0, 0, 10]} />

//Lights
<T.DirectionalLight position={[10, 10, 10]} intensity="0.5" />
<T.PointLight position={[10, 2, 2]} color="blue" />

<!-- <Cube />
<Circle /> -->
<Plane />
