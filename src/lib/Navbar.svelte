<script>
	import logo from '$lib/images/logo.png';

	// /pitswebdev
</script>

<header class="header">
	<nav class="navbar">
		<div class="logo">
			<a href="/pitswebdev"><img src={logo} alt="logo ps" /></a>
		</div>

		<ul class="menu">
			<li><a href="/pitswebdev">Home</a></li>
			<li><a href="/pitswebdev/about">About</a></li>
			<li><a href="/pitswebdev/work">Work</a></li>
			<li><a class="li_con" href="/pitswebdev/contact">Contact</a></li>
		</ul>
	</nav>
</header>

<style>
	.header {
		width: 100%;
		height: var(--header_height);
	}

	.navbar {
		width: 92%;
		height: 100%;
		margin: 0 auto;
		display: flex;
		align-items: center;
		justify-content: space-between;
	}

	.menu {
		display: flex;
		align-items: center;
		gap: 6.4rem;
	}

	.li_con {
		background-color: var(--yellow);
		color: var(--dark);
		padding: 0.4rem 1.6rem;
		border-radius: 3.2rem;
	}
</style>
