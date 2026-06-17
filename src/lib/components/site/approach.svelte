<script lang="ts">
	import Eyebrow from '$lib/components/brand/eyebrow.svelte';

	const steps = [
		{
			n: '01',
			t: 'We luisteren',
			b: 'Eerst snappen we het werk. Waar zit de pijn, en waar zit AI of automatisering juist in de weg?'
		},
		{
			n: '02',
			t: 'We bouwen mee',
			b: 'Saaie, bewezen technologie boven hippe stacks. Het moet over vijf jaar nog onderhoudbaar zijn.'
		},
		{
			n: '03',
			t: 'Jij beheert zelf',
			b: 'We dragen over: code, documentatie, sleutels. Geen afhankelijkheid, geen verrassingen op de factuur.'
		}
	];
</script>

<section id="aanpak" class="bg-teal-deep px-10 py-18">
	<div class="mx-auto max-w-[1100px]">
		<Eyebrow num="02" tone="dark">Aanpak</Eyebrow>
		<h2 class="mt-3 max-w-[18ch] font-sans text-[40px] font-bold tracking-[-0.045em] text-teal-fg">
			Jij de sleutels. <span class="text-mint-bright">Wij</span> het zware werk.
		</h2>
		<div class="mt-12 grid grid-cols-1 gap-8 md:grid-cols-3">
			{#each steps as s (s.n)}
				<div class="border-t border-[rgba(217,232,228,0.18)] pt-[18px]">
					<div class="mb-3 font-mono text-[13px] tracking-[0.08em] text-mint-bright">{s.n}</div>
					<h3 class="mb-2 font-sans text-[20px] font-semibold tracking-[-0.02em] text-teal-fg">
						{s.t}
					</h3>
					<p class="font-sans text-[14px] leading-[1.55] text-[rgba(217,232,228,0.7)]">{s.b}</p>
				</div>
			{/each}
		</div>
	</div>
</section>
