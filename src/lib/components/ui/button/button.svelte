<script lang="ts" module>
	import { cn, type WithElementRef } from '$lib/utils.js';
	import type { HTMLAnchorAttributes, HTMLButtonAttributes } from 'svelte/elements';
	import { type VariantProps, tv } from 'tailwind-variants';

	// Arsene Button — strict, near-square (6px), no shadow, no gradient.
	// Primary is teal-deep; hover deepens to ink. Outline = 1.5px ink.
	// The em-arrow (→) is the house affordance for forward actions.
	export const buttonVariants = tv({
		base: "focus-visible:border-ring focus-visible:ring-ring/30 aria-invalid:ring-destructive/20 aria-invalid:border-destructive rounded-lg border-[1.5px] border-transparent bg-clip-padding font-sans font-semibold tracking-[-0.01em] focus-visible:ring-3 active:not-aria-[haspopup]:translate-y-px aria-invalid:ring-3 [&_svg:not([class*='size-'])]:size-4 group/button inline-flex shrink-0 items-center justify-center whitespace-nowrap transition-[background-color,color,border-color,transform] duration-200 ease-[var(--ease-out)] outline-none select-none disabled:pointer-events-none disabled:opacity-40 [&_svg]:pointer-events-none [&_svg]:shrink-0",
		variants: {
			variant: {
				default: 'bg-primary text-primary-foreground border-primary hover:bg-ink hover:border-ink',
				outline: 'border-ink bg-transparent text-ink hover:bg-ink hover:text-paper',
				ghost: 'bg-transparent text-ink hover:bg-paper-2',
				accent:
					'bg-mint text-[#04241b] border-mint hover:bg-mint-deep hover:text-white hover:border-mint-deep',
				secondary: 'bg-secondary text-secondary-foreground border-secondary hover:bg-paper-2',
				destructive: 'bg-destructive text-white border-destructive hover:opacity-90',
				link: 'border-transparent text-ink underline-offset-4 hover:underline'
			},
			size: {
				default: 'gap-2 px-[18px] py-[9px] text-[15px]',
				sm: 'gap-1.5 px-3 py-1.5 text-[13px]',
				lg: 'gap-2 px-6 py-[13px] text-[17px]',
				icon: 'size-9',
				'icon-sm': 'size-8',
				'icon-lg': 'size-11'
			}
		},
		defaultVariants: {
			variant: 'default',
			size: 'default'
		}
	});

	export type ButtonVariant = VariantProps<typeof buttonVariants>['variant'];
	export type ButtonSize = VariantProps<typeof buttonVariants>['size'];

	export type ButtonProps = WithElementRef<HTMLButtonAttributes> &
		WithElementRef<HTMLAnchorAttributes> & {
			variant?: ButtonVariant;
			size?: ButtonSize;
			arrow?: boolean;
		};
</script>

<script lang="ts">
	let {
		class: className,
		variant = 'default',
		size = 'default',
		arrow = false,
		ref = $bindable(null),
		href = undefined,
		type = 'button',
		disabled,
		children,
		...restProps
	}: ButtonProps = $props();
</script>

{#snippet inner()}
	{@render children?.()}
	{#if arrow}
		<span
			aria-hidden="true"
			class="transition-transform duration-200 ease-[var(--ease-out)] group-hover/button:translate-x-0.5"
			>→</span
		>
	{/if}
{/snippet}

{#if href}
	<a
		bind:this={ref}
		data-slot="button"
		class={cn(buttonVariants({ variant, size }), className)}
		href={disabled ? undefined : href}
		aria-disabled={disabled}
		role={disabled ? 'link' : undefined}
		tabindex={disabled ? -1 : undefined}
		{...restProps}
	>
		{@render inner()}
	</a>
{:else}
	<button
		bind:this={ref}
		data-slot="button"
		class={cn(buttonVariants({ variant, size }), className)}
		{type}
		{disabled}
		{...restProps}
	>
		{@render inner()}
	</button>
{/if}
