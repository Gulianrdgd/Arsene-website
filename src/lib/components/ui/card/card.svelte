<script lang="ts" module>
	import { type VariantProps, tv } from 'tailwind-variants';

	// Arsene Card — white surface on paper, hairline warm border, near-square.
	// `tone="dark"` flips to a teal panel. Depth comes from contrast, not
	// shadow — the soft shadow-card is opt-in via `raised`.
	export const cardVariants = tv({
		base: 'rounded-lg border p-6 text-sm group/card flex flex-col',
		variants: {
			tone: {
				light: 'bg-surface text-ink border-warm-400',
				paper: 'bg-paper text-ink border-warm-400',
				dark: 'bg-teal-card text-teal-fg border-teal-card'
			},
			raised: {
				true: 'shadow-[0_1px_3px_rgba(20,18,15,0.06)]',
				false: ''
			}
		},
		defaultVariants: {
			tone: 'light',
			raised: false
		}
	});

	export type CardTone = VariantProps<typeof cardVariants>['tone'];
</script>

<script lang="ts">
	import type { HTMLAttributes } from 'svelte/elements';
	import { cn, type WithElementRef } from '$lib/utils.js';

	let {
		ref = $bindable(null),
		class: className,
		tone = 'light',
		raised = false,
		children,
		...restProps
	}: WithElementRef<HTMLAttributes<HTMLDivElement>> & {
		tone?: CardTone;
		raised?: boolean;
	} = $props();
</script>

<div
	bind:this={ref}
	data-slot="card"
	class={cn(cardVariants({ tone, raised }), className)}
	{...restProps}
>
	{@render children?.()}
</div>
