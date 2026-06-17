<script lang="ts">
	import { cn, type WithElementRef } from '$lib/utils.js';
	import type { HTMLSelectAttributes } from 'svelte/elements';
	import ChevronDownIcon from '@lucide/svelte/icons/chevron-down';

	type NativeSelectProps = Omit<WithElementRef<HTMLSelectAttributes>, 'size'> & {
		size?: 'sm' | 'default';
	};

	let {
		ref = $bindable(null),
		value = $bindable(),
		class: className,
		size = 'default',
		children,
		...restProps
	}: NativeSelectProps = $props();
</script>

<div
	class={cn(
		'cn-native-select-wrapper group/native-select relative w-fit has-[select:disabled]:opacity-50',
		className
	)}
	data-slot="native-select-wrapper"
	data-size={size}
>
	<select
		bind:value
		bind:this={ref}
		data-slot="native-select"
		data-size={size}
		class="bg-surface text-ink border-warm-400 focus-visible:border-ink aria-invalid:border-signal w-full min-w-0 appearance-none rounded-lg border-[1.5px] py-2.5 pr-9 pl-3 text-[15px] transition-[border-color] duration-150 ease-[var(--ease-out)] cursor-pointer outline-none disabled:pointer-events-none disabled:cursor-not-allowed"
		{...restProps}
	>
		{@render children?.()}
	</select>
	<ChevronDownIcon
		class="text-warm-600 top-1/2 right-3 size-4 -translate-y-1/2 pointer-events-none absolute select-none"
		aria-hidden
		data-slot="native-select-icon"
	/>
</div>
