<script lang="ts">
	import { onMount } from 'svelte';
	import { Button } from '$lib/components/ui/button/index.js';
	import logo from '$lib/assets/logo.svg';

	let { onContact }: { onContact?: () => void } = $props();

	let scrolled = $state(false);
	const links = [{ label: 'Zo help ik', href: '#help' }];

	onMount(() => {
		const onScroll = () => (scrolled = window.scrollY > 12);
		onScroll();
		window.addEventListener('scroll', onScroll, { passive: true });
		return () => window.removeEventListener('scroll', onScroll);
	});

	const headerStyle = $derived(
		scrolled
			? 'background: rgba(244,241,232,0.86); backdrop-filter: saturate(140%) blur(10px); border-bottom: 1px solid var(--warm-400);'
			: 'background: transparent; border-bottom: 1px solid transparent;'
	);
</script>

<header
	class="sticky top-0 z-20 flex items-center justify-between px-10 py-4 transition-[background-color,border-color] duration-200 ease-[var(--ease-out)]"
	style={headerStyle}
>
	<a href="#top" class="transition-opacity hover:opacity-70" aria-label="arsene — naar boven">
		<img src={logo} alt="arsene" width="104" height="26" class="h-[26px] w-auto select-none" />
	</a>
	<nav class="flex items-center gap-7">
		{#each links as link (link.href)}
			<a
				href={link.href}
				class="font-mono text-[11px] uppercase tracking-[0.14em] text-warm-800 no-underline transition-opacity hover:opacity-70"
			>
				{link.label}
			</a>
		{/each}
		<Button size="sm" arrow onclick={onContact}>Begin een gesprek</Button>
	</nav>
</header>
