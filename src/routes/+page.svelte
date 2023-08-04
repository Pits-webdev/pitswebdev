<script>
	import { Canvas } from '@threlte/core';
	import Scene from '$lib/Scene.svelte';
</script>

<div class="head container_xl">
	<div class="head_container">
		<div class="box_left">
			<div class="content">
				<h2>Developer</h2>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
			</div>
			<div class="content">
				<h2>Skills</h2>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
			</div>
		</div>
		<!-- center -->
		<div class="box_center">
			<!-- line -->
			<div class="line_container">
				<div class="box box_1">
					<span class="line line_H" />
					<span class="line line_V" />
				</div>
				<div class="box box_2">
					<span class="line line_H" />
					<span class="line line_V" />
				</div>

				<div class="box box_3">
					<span class="line line_H" />
					<span class="line line_V" />
				</div>

				<div class="box box_4">
					<span class="line line_H" />
					<span class="line line_V" />
				</div>
			</div>

			<!-- threlte -->
			<div class="threlte">
				<Canvas>
					<Scene />
				</Canvas>
			</div>
		</div>

		<div class="box_right">
			<div class="content">
				<h2>Designer</h2>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
			</div>
			<div class="content">
				<h2>Seo</h2>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
				<p>Lorem, ipsum dolor.</p>
			</div>
		</div>
	</div>
</div>

<style>
	.head {
		height: calc(100vh - var(--header_height));
		display: flex;
		align-items: center;
	}
	.head_container {
		width: 100%;
		height: calc(70vh - var(--header_height));
		display: grid;
		grid-template-columns: 15% auto 15%;
		gap: 6.2rem;
	}

	.box_left,
	.box_right {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		gap: 3.2rem;
		width: 100%;
		height: 100%;
	}

	.box_left {
		align-items: flex-start;
	}
	.box_right {
		align-items: flex-end;
	}

	.box_center {
		width: 100%;
		height: 100%;
		position: relative;
	}

	/* lines geen start */
	.line_container {
		width: 100%;
		height: 100%;
		position: absolute;
		left: 0;
		top: 0;
	}
	.box {
		width: 7rem;
		height: 7rem;
	}

	.box_1 {
		position: absolute;
		top: 0;
		left: 0;
	}
	.box_2 {
		position: absolute;
		top: 0;
		right: 0;
	}
	.box_3 {
		position: absolute;
		bottom: 0;
		left: 0;
	}
	.box_4 {
		position: absolute;
		bottom: 0;
		right: 0;
	}

	.line {
		background-color: var(--green);
		display: inline-block;
	}

	.line_H {
		width: 100%;
		height: 0.1rem;
	}
	.line_V {
		height: 100%;
		width: 0.1rem;
	}

	.box_1 .line_H,
	.box_1 .line_V {
		position: absolute;
		top: 0;
		left: 0;
	}

	.box_2 .line_H,
	.box_2 .line_V {
		position: absolute;
		top: 0;
		right: 0;
	}

	.box_3 .line_H,
	.box_3 .line_V {
		position: absolute;
		bottom: 0;
		left: 0;
	}
	.box_4 .line_H,
	.box_4 .line_V {
		position: absolute;
		bottom: 0;
		right: 0;
	}
	/* lines green end */

	.threlte {
		width: 100%;
		height: 100%;
	}
</style>
