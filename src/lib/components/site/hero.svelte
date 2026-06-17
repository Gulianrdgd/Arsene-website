<script lang="ts">
	import Eyebrow from '$lib/components/brand/eyebrow.svelte';
	import { Button } from '$lib/components/ui/button/index.js';
	import { Badge } from '$lib/components/ui/badge/index.js';

	let { onContact }: { onContact?: () => void } = $props();

</script>

<section class="mx-auto max-w-[1100px] px-10 py-20">
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
	<div class="mt-24 flex flex-wrap gap-3 mb-13">
		<Button size="lg" arrow onclick={onContact}>Begin een gesprek</Button>
	</div>

</section>
