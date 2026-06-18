<script lang="ts">
	import { Button } from '$lib/components/ui/button/index.js';
	import logo from '$lib/assets/logo.svg';

	const links = [{ label: 'Zo help ik', href: '#help' }];
</script>

<header class="sticky top-0 z-20 flex items-center justify-between border-b border-warm-400/60 bg-paper/80 px-10 py-4 backdrop-blur-md backdrop-saturate-150">
	<a href="#top" class="transition-opacity hover:opacity-70" aria-label="arsene — naar boven">
		<img src={logo} alt="arsene" width="104" height="26" class="h-6.5 w-auto select-none" />
	</a>
	<nav class="flex items-center gap-7">
		{#each links as link (link.href)}
			<a
				href={link.href}
				class="font-mono text-[11px] uppercase tracking-[0.14em] text-warm-800 no-underline transition-opacity hover:opacity-70 not-sm:hidden"
			>
				{link.label}
			</a>
		{/each}
		<Button size="sm" arrow href="#contact">Neem contact op</Button>
	</nav>
</header>
