<script>
	import work from '../lib/images/hammer.png';
	import arrow from '$lib/images/arrow.png';
</script>

<div class="head container_xl">
	<div class="top">
		<div class="grid">
			<div class="squer">
				<span class="icon">ps</span>
				<span class="icon">
					<img src={arrow} alt="arrow" />
				</span>
			</div>
			<div class="hl_top">
				<h1>FUTURE <span>DIGITAL</span></h1>
			</div>

			<div class="hl_bottom">
				<h1><span>UNIQUE</span> WEBDESIGN</h1>
			</div>
		</div>
	</div>
</div>

<style>
	.head {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	.top {
		width: 100%;
		height: 100%;
		display: flex;
		gap: 3.2rem;
	}

	.squer {
		max-width: 22vw;
		height: 82%;
		background-color: var(--gray);
		display: flex;
		align-items: center;
		justify-content: center;
		gap: 3.2rem;
		border-radius: 6.4rem;
		padding: 1.6rem 8rem;
	}

	.icon {
		display: inline-block;
	}

	.grid {
		display: grid;
		grid-template-columns: repeat(7, minmax(0, 1fr));
		grid-template-rows: repeat(2, minmax(0, 1fr));
		align-items: center;
	}

	.squer {
		grid-column: 1 / 3;
	}

	.hl_top {
		grid-column: 3 / -1;
	}

	.hl_bottom {
		grid-column: 1 / -1;
	}
</style>
