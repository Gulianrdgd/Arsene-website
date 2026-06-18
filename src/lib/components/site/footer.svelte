<script lang="ts">
	import logoDark from '$lib/assets/logo-dark.svg';
</script>

<footer class="bg-teal-deep px-10 py-6">
	<div class="mx-auto flex max-w-275 flex-col items-center justify-between gap-4 sm:flex-row">
		<img src={logoDark} alt="arsene" width="124" height="28" class="h-6.5 w-auto select-none" />
		<div class="font-mono text-[12px] tracking-[0.06em] text-[rgba(217,232,228,0.55)]">
			<a
				href="mailto:info@arsene.nl"
				class="text-[rgba(217,232,228,0.82)] no-underline transition-opacity hover:opacity-70"
			>
				info@arsene.nl
			</a>
			<span class="px-1.5 text-mint-bright">·</span>
			Nijmegen, NL
			<span class="px-1.5 text-mint-bright">·</span>
			KVK 42087289
		</div>
	</div>
</footer>
