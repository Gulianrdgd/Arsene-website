<script lang="ts">
	import Eyebrow from '$lib/components/brand/eyebrow.svelte';
	import { Button } from '$lib/components/ui/button/index.js';
	import { Badge } from '$lib/components/ui/badge/index.js';

	let { onContact }: { onContact?: () => void } = $props();

	const badges = ['Geen lock-in', 'Open source waar het kan', 'Je houdt de sleutels'];
</script>

<section class="mx-auto max-w-[1100px] px-10 pt-18 pb-14">
	<Eyebrow>Software-studio · Utrecht</Eyebrow>
	<h1
		class="mt-5 max-w-[16ch] font-sans font-bold tracking-[-0.05em] text-ink"
		style="font-size: clamp(44px, 7vw, 84px); line-height: 0.98;"
	>
		Software op <span class="marker">jouw</span> voorwaarden.
	</h1>
	<p class="mt-7 max-w-[52ch] font-sans text-[20px] leading-[1.5] text-warm-800">
		We bouwen digitale infrastructuur voor het MKB die je daarna zélf kunt beheren. Geen lock-in,
		geen onzin — wel iets dat over vijf jaar nog werkt.
	</p>
	<div class="mt-8 flex flex-wrap gap-3">
		<Button size="lg" arrow onclick={onContact}>Begin een gesprek</Button>
		<Button variant="outline" size="lg">Bekijk ons werk</Button>
	</div>
	<div class="mt-9 flex flex-wrap gap-2.5">
		{#each badges as label (label)}
			<Badge variant="neutral" dot>{label}</Badge>
		{/each}
	</div>
</section>
