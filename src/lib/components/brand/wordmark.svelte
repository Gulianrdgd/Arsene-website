<script lang="ts">
	import { cn } from '$lib/utils.js';

	// Arsene Wordmark — "arsene" lowercase, Geist 600, tracked −0.04em, with the
	// mint pin after the final e. Never uppercase, never stretched, never a
	// non-mint pin. The pin stays flat — no glow.
	let {
		size = 32,
		tone = 'dark',
		class: className
	}: { size?: number; tone?: 'light' | 'dark'; class?: string } = $props();

	const pin = $derived(Math.max(4, Math.round(size * 0.13)));
	const gap = $derived(Math.max(2, Math.round(size * 0.05)));
</script>

<span
	class={cn(
		'inline-flex items-baseline font-sans font-semibold leading-none tracking-[-0.04em]',
		tone === 'dark' ? 'text-teal-fg' : 'text-ink',
		className
	)}
	style="font-size: {size}px;"
>
	arsene
	<span
		class="inline-block rounded-full bg-mint"
		style="width: {pin}px; height: {pin}px; margin-left: {gap}px;"
	></span>
</span>
