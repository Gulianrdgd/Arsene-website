<script lang="ts">
	import Eyebrow from '$lib/components/brand/eyebrow.svelte';

	const steps = [
		{
			n: '01',
			t: 'Systemen die samenwerken',
			b: 'Je oude websites en systemen gaan eindelijk met elkaar praten. Een beetje slimme software zorgt voor een stuk minder handwerk.'
		},
		{
			n: '02',
			t: 'AI waar het loont',
			b: 'Ik denk mee over nieuwe AI-mogelijkheden en maak je bedrijf AI-ready. Niet omdat het hip is, maar omdat het je werk scheelt.'
		},
		{
			n: '03',
			t: 'Jij blijft de baas',
			b: 'Ik verkoop je niet een systeem waar je aan vast zit. We zorgen voor een duurzame en wendbare oplossing'
		}
	];
</script>

<section id="help" class="bg-teal-deep px-10 py-18">
	<div class="mx-auto max-w-[1100px] py-12">
		<Eyebrow num="01" tone="dark">Zo help ik</Eyebrow>
		<h2 class="mt-3 max-w-[18ch] font-sans text-[40px] font-bold tracking-[-0.045em] text-teal-fg">
			Van vastzitten naar vooruit.
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
