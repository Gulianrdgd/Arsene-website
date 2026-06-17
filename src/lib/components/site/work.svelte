<script lang="ts">
	import Eyebrow from '$lib/components/brand/eyebrow.svelte';
	import { Card } from '$lib/components/ui/card/index.js';

	const cases = [
		{
			eyebrow: 'KLM Cargo',
			title: 'Eén dashboard.\nZes minder Excels.',
			body: 'Vrachtplanning samengebracht in één tool die het team zelf beheert.',
			tag: 'Logistiek'
		},
		{
			eyebrow: 'De Vegetarische Slager',
			title: 'Bestellingen,\nzonder ruis.',
			body: 'Een orderportaal dat meegroeit met het seizoen — gehost op eigen servers.',
			tag: 'Retail'
		},
		{
			eyebrow: 'Gemeente Utrecht',
			title: 'Hulpzoeker\nper buurt.',
			body: 'Inwoners vinden de juiste regeling in drie klikken. Volledig open source.',
			tag: 'Publiek'
		}
	];
</script>

<section id="werk" class="mx-auto max-w-[1100px] px-10 py-16">
	<div class="mb-7 flex flex-wrap items-baseline justify-between gap-2">
		<div>
			<Eyebrow num="01">Werk</Eyebrow>
			<h2 class="mt-2.5 font-sans text-[36px] font-bold tracking-[-0.04em] text-ink">
				Een greep uit wat we bouwden.
			</h2>
		</div>
		<span class="font-mono text-[11px] uppercase tracking-[0.1em] text-warm-600">2024 — 2026</span>
	</div>
	<div class="grid grid-cols-1 gap-4 md:grid-cols-3">
		{#each cases as c, i (c.eyebrow)}
			<Card
				tone={i === 0 ? 'dark' : 'light'}
				class="min-h-[240px] cursor-pointer gap-3.5 transition-colors hover:border-ink/30"
			>
				<Eyebrow tone={i === 0 ? 'dark' : 'light'}>{c.eyebrow}</Eyebrow>
				<h3
					class="m-0 whitespace-pre-line font-sans text-[24px] font-bold leading-[1.02] tracking-[-0.035em] {i ===
					0
						? 'text-teal-fg'
						: 'text-ink'}"
				>
					{c.title}
				</h3>
				<p
					class="mb-auto font-sans text-[14px] leading-[1.5] {i === 0
						? 'text-[rgba(217,232,228,0.72)]'
						: 'text-warm-800'}"
				>
					{c.body}
				</p>
				<span
					class="font-mono text-[10px] uppercase tracking-[0.12em] {i === 0
						? 'text-mint-bright'
						: 'text-mint-deep'}"
				>
					— {c.tag}
				</span>
			</Card>
		{/each}
	</div>
</section>
