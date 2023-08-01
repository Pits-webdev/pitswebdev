<script>
	import { T, useFrame } from '@threlte/core';

	let rotation = 0;

	useFrame((state, delta) => {
		rotation += delta;
	});
</script>

<T.Mesh rotation.y={rotation}>
	<T.BoxGeometry args={[3, 3, 3]} />
	<T.MeshStandardMaterial color="lightgreen" />
</T.Mesh>
