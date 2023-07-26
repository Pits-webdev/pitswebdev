<script>
	import work from '../lib/images/hammer.png';
</script>

<div class="home container_xl">
	<h1>Welcome to SvelteKit Github Page</h1>
	<p>pits-webdev</p>
	<img src={work} alt="work" />
</div>

<style>
	.home {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	p {
		margin-top: 3.2rem;
	}
	img {
		width: 200px;
		margin-top: 20rem;
	}
</style>
