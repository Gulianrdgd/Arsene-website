<script lang="ts">
	import { cn } from '$lib/utils.js';

	// Eyebrow — the mono, uppercase section label. Leads with an em-dash and,
	// optionally, a two-digit section number. Mint Deep on paper, Mint Bright
	// on teal (pass tone="dark").
	let {
		num,
		tone = 'light',
		class: className,
		children
	}: {
		num?: string;
		tone?: 'light' | 'dark';
		class?: string;
		children: import('svelte').Snippet;
	} = $props();
</script>

<div
	class={cn(
		'font-mono text-[11px] font-medium uppercase tracking-[0.14em]',
		tone === 'dark' ? 'text-mint-bright' : 'text-mint-deep',
		className
	)}
>
	— {num ? `${num} · ` : ''}{@render children()}
</div>
