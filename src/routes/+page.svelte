<script>
	import arrow from '$lib/images/arrow.png';
</script>

<div class="head container_xl">
	<div class="head_top">
		<div class="grid">
			<div class="square">
				<span class="icon"
					><svg
						width="128px"
						height="128px"
						viewBox="0 0 128 128"
						version="1.1"
						xmlns:xlink="http://www.w3.org/1999/xlink"
						xmlns="http://www.w3.org/2000/svg"
					>
						<path
							d="M64 0C64 35.3462 35.3462 64 0 64C35.3462 64 64 92.6538 64 128C64 92.6538 92.6538 64 128 64C92.6538 64 64 35.3462 64 0Z"
							id="icon_1"
							fill="#020202"
							fill-rule="evenodd"
							stroke="none"
						/>
					</svg></span
				>
				<span class="icon">
					<svg
						width="181.21149px"
						height="119.125946px"
						viewBox="0 0 181.21149 119.125946"
						version="1.1"
						xmlns:xlink="http://www.w3.org/1999/xlink"
						xmlns="http://www.w3.org/2000/svg"
					>
						<path
							d="M133.468 69.5986L0 69.5986L0 49.6317L133.575 49.6317C120.535 37.1127 112.418 19.5043 112.418 7.62939e-06L131.585 0C131.585 27.4082 153.803 49.6269 181.211 49.6269L181.211 49.6317L181.211 69.5986L178.083 69.5986C152.132 71.2107 131.583 92.7686 131.583 119.126L112.418 119.126C112.418 119.102 112.418 119.078 112.418 119.053C112.438 99.6318 120.507 82.0949 133.468 69.5986Z"
							id="arrow"
							fill="#DAF982"
							fill-rule="evenodd"
							stroke="none"
						/>
					</svg>
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

	<div class="head_bottom">
		<div class="row">
			<div class="content">
				<p>Hello I'm Peter from germany,</p>
				<p>
					I'm helping startups and business owners to make a visual statement through spotless Web
					Design and Development so they can increase brand awareness and sell more.
				</p>
			</div>
		</div>

		<div class="row">image</div>
	</div>
</div>

<style>
	.head {
		display: flex;
		flex-direction: column;
		align-items: center;
		margin-top: 3.2rem;
	}
	.head_top {
		width: 100%;
		height: 100%;
		display: flex;
		gap: 3.2rem;
	}

	.square {
		width: 22vw;
		height: 8.5vw;
		background-color: var(--gray);
		display: flex;
		align-items: center;
		justify-content: center;
		gap: 3.2vw;
		border-radius: 10rem;
	}

	.square .icon {
		display: flex;
		align-items: center;
	}

	.square .icon svg {
		display: inline-block;
		width: 7.2vw;
		height: auto;
	}

	.grid {
		display: grid;
		grid-template-columns: repeat(7, minmax(0, 1fr));
		grid-template-rows: repeat(2, minmax(0, 1fr));
		align-items: center;
	}

	.square {
		grid-column: 1 / 3;
	}

	.hl_top {
		grid-column: 3 / -1;
	}

	.hl_bottom {
		grid-column: 1 / -1;
	}

	.head_bottom {
		display: flex;
		justify-content: space-between;
		gap: 26rem;
		margin-top: 6.4rem;
	}

	.head_bottom .row {
		flex-basis: 50%;
	}

	.row .content {
		width: 100%;
		height: 100%;
		border: 2px solid var(--gray);
		padding: 3.6rem;
		border-radius: 3.2rem;
	}
</style>
