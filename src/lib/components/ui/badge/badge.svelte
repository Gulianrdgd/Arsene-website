<script lang="ts" module>
	import { type VariantProps, tv } from 'tailwind-variants';

	// Arsene Badge — a mono pill label. Uppercase, tracked wide. Used for
	// status, do/don't markers, and small metadata flags. Optional leading
	// mint dot (the "pin"), kept flat — no glow.
	export const badgeVariants = tv({
		base: 'font-mono text-[11px] font-medium uppercase tracking-[0.12em] leading-none gap-2 rounded-full border px-2.5 py-1.5 transition-colors focus-visible:border-ring focus-visible:ring-ring/50 aria-invalid:ring-destructive/20 aria-invalid:border-destructive group/badge inline-flex w-fit shrink-0 items-center justify-center whitespace-nowrap focus-visible:ring-[3px]',
		variants: {
			variant: {
				neutral: 'bg-paper-2 text-warm-800 border-warm-400',
				mint: 'bg-mint text-white border-mint',
				dark: 'bg-teal-deep text-teal-fg border-teal-deep',
				outline: 'bg-transparent text-signal border-signal',
				default: 'bg-primary text-primary-foreground border-primary'
			}
		},
		defaultVariants: {
			variant: 'neutral'
		}
	});

	export type BadgeVariant = VariantProps<typeof badgeVariants>['variant'];
</script>

<script lang="ts">
	import type { HTMLAnchorAttributes } from 'svelte/elements';
	import { cn, type WithElementRef } from '$lib/utils.js';

	let {
		ref = $bindable(null),
		href,
		class: className,
		variant = 'neutral',
		dot = false,
		children,
		...restProps
	}: WithElementRef<HTMLAnchorAttributes> & {
		variant?: BadgeVariant;
		dot?: boolean;
	} = $props();
</script>

<svelte:element
	this={href ? 'a' : 'span'}
	bind:this={ref}
	data-slot="badge"
	{href}
	class={cn(badgeVariants({ variant }), className)}
	{...restProps}
>
	{#if dot}
		<span
			class={cn(
				'size-[7px] shrink-0 rounded-full',
				variant === 'dark' || variant === 'mint' ? 'bg-mint' : 'bg-current'
			)}
		></span>
	{/if}
	{@render children?.()}
</svelte:element>
