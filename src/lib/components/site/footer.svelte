<script lang="ts">
	import Wordmark from '$lib/components/brand/wordmark.svelte';

	const cols = [
		{
			h: 'Studio',
			items: [
				{ label: 'Werk', href: '#werk' },
				{ label: 'Aanpak', href: '#aanpak' },
				{ label: 'Over', href: '#contact' },
				{ label: 'Contact', href: '#contact' }
			]
		},
		{
			h: 'Praktisch',
			items: [
				{ label: 'info@arsene.nl', href: 'mailto:info@arsene.nl' },
				{ label: '+31 6 12 34 56 78', href: 'tel:+31612345678' },
				{ label: 'Utrecht, NL', href: '#contact' }
			]
		},
		{
			h: 'Open',
			items: [
				{ label: 'GitHub', href: 'https://github.com/Gulianrdgd/arsene-huisstijl' },
				{ label: 'Status', href: '#contact' },
				{ label: 'Privacy', href: '#contact' }
			]
		}
	];
</script>

<footer class="bg-teal-card px-10 pt-14 pb-9">
	<div class="mx-auto grid max-w-[1100px] grid-cols-1 gap-8 md:grid-cols-[2fr_1fr_1fr_1fr]">
		<div>
			<Wordmark size={28} tone="dark" />
			<p
				class="mt-4 max-w-[30ch] font-sans text-[14px] leading-[1.55] text-[rgba(217,232,228,0.6)]"
			>
				Software op jouw voorwaarden. Klein bedrijf — echte infrastructuur.
			</p>
		</div>
		{#each cols as col (col.h)}
			<div>
				<div class="mb-3.5 font-mono text-[10px] uppercase tracking-[0.14em] text-mint-bright">
					— {col.h}
				</div>
				<ul class="m-0 flex list-none flex-col gap-2 p-0">
					{#each col.items as item (item.label)}
						<li>
							<a
								href={item.href}
								class="font-sans text-[14px] text-[rgba(217,232,228,0.8)] no-underline transition-opacity hover:opacity-70"
							>
								{item.label}
							</a>
						</li>
					{/each}
				</ul>
			</div>
		{/each}
	</div>
	<div
		class="mx-auto mt-9 flex max-w-[1100px] justify-between border-t border-[rgba(217,232,228,0.14)] pt-5 font-mono text-[11px] tracking-[0.06em] text-[rgba(217,232,228,0.5)]"
	>
		<span>© 2026 Arsene</span>
		<span>Geen lock-in. Geen onzin.</span>
	</div>
</footer>
