<script lang="ts">
	import Eyebrow from '$lib/components/brand/eyebrow.svelte';
	import { Button } from '$lib/components/ui/button/index.js';
	import { Input } from '$lib/components/ui/input/index.js';
	import { Label } from '$lib/components/ui/label/index.js';
	import { Checkbox } from '$lib/components/ui/checkbox/index.js';
	import { NativeSelect, NativeSelectOption } from '$lib/components/ui/native-select/index.js';

	let sent = $state(false);
	let agree = $state(false);

	const reasons = ['Nieuw project', 'Bestaand systeem overnemen', 'AI-advies', 'Iets anders'];

	function handleSubmit(e: SubmitEvent) {
		e.preventDefault();
		sent = true;
	}
</script>

<section id="contact" class="mx-auto max-w-[1100px] px-10 py-18">
	<div class="grid grid-cols-1 items-start gap-14 md:grid-cols-2">
		<div>
			<Eyebrow num="03">Contact</Eyebrow>
			<h2 class="mt-3 max-w-[14ch] font-sans text-[40px] font-bold tracking-[-0.045em] text-ink">
				Begin een gesprek.
			</h2>
			<p class="mt-5 max-w-[40ch] font-sans text-[16px] leading-[1.55] text-warm-800">
				Vertel kort wat er speelt. We mailen binnen een werkdag terug — geen salesfunnel, gewoon een
				mens.
			</p>
			<div class="mt-7 font-mono text-[13px] tracking-[0.04em] text-mint-deep">
				info@arsene.nl · +31 6 12 34 56 78
			</div>
		</div>
		<div class="rounded-lg border border-warm-400 bg-surface p-7">
			{#if sent}
				<div class="flex flex-col gap-2.5 py-6">
					<span class="font-mono text-[11px] uppercase tracking-[0.14em] text-mint-deep">
						— Verstuurd
					</span>
					<h3 class="m-0 font-sans text-[24px] font-bold tracking-[-0.03em] text-ink">
						Dank — we mailen je snel.
					</h3>
					<p class="m-0 font-sans text-[14px] text-warm-800">Binnen een werkdag hoor je van ons.</p>
				</div>
			{:else}
				<form onsubmit={handleSubmit} class="flex flex-col gap-4">
					<div class="flex flex-col gap-1.5">
						<Label for="contact-naam" class="text-[13px] font-medium text-ink">Naam</Label>
						<Input id="contact-naam" placeholder="Voor- en achternaam" required />
					</div>
					<div class="flex flex-col gap-1.5">
						<Label for="contact-email" class="text-[13px] font-medium text-ink">E-mail</Label>
						<Input id="contact-email" type="email" placeholder="jij@bedrijf.nl" required />
					</div>
					<div class="flex flex-col gap-1.5">
						<Label for="contact-reden" class="text-[13px] font-medium text-ink">
							Wat speelt er?
						</Label>
						<NativeSelect id="contact-reden" class="w-full">
							{#each reasons as reason (reason)}
								<NativeSelectOption value={reason}>{reason}</NativeSelectOption>
							{/each}
						</NativeSelect>
					</div>
					<label class="flex cursor-pointer items-center gap-2.5">
						<Checkbox bind:checked={agree} />
						<span class="font-sans text-[14px] text-ink">
							Je mag mijn gegevens gebruiken om te reageren.
						</span>
					</label>
					<Button type="submit" arrow disabled={!agree} class="mt-1 self-start">Verstuur</Button>
				</form>
			{/if}
		</div>
	</div>
</section>
