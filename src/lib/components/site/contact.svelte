<script lang="ts">
	import Eyebrow from '$lib/components/brand/eyebrow.svelte';
	import { Mail } from '@lucide/svelte';
</script>

<section id="contact" class="mx-auto max-w-275 px-10 py-18">
	<div class="grid grid-cols-1 items-start gap-14 py-12 md:grid-cols-2">
		<div>
			<Eyebrow num="02">Contact</Eyebrow>
			<h2 class="mt-3 max-w-[14ch] font-sans text-[40px] font-bold tracking-[-0.045em] text-ink">
				Laten we praten.
			</h2>
			<p class="mt-5 max-w-[40ch] font-sans text-[16px] leading-[1.55] text-warm-800">
				Ik ben altijd in voor een goed gesprek, geheel vrijblijvend. Of je nu een idee hebt, een probleem wilt bespreken of gewoon wilt kennismaken, stuur me een berichtje en we plannen een afspraak.
			</p>
		</div>

		<div class="flex flex-col gap-3">
			<a
				href="mailto:info@arsene.nl"
				class="group flex items-center justify-between rounded-lg border border-warm-400 bg-surface px-5 py-4 transition-[border-color,background-color] duration-200 hover:border-ink hover:bg-paper-2"
			>
				<div class="flex items-center gap-3">
					<Mail class="size-4 shrink-0 text-warm-600" />
					<div class="flex flex-col">
						<span class="font-mono text-[10px] uppercase tracking-[0.12em] text-warm-600"
							>E-mail</span
						>
						<span class="font-mono text-[14px] text-ink">info@arsene.nl</span>
					</div>
				</div>
				<span
					aria-hidden="true"
					class="font-mono text-[14px] text-warm-600 transition-transform duration-200 group-hover:translate-x-0.5"
					>→</span
				>
			</a>

			<a
				href="https://www.linkedin.com/in/julian-van-der-horst-80498120/"
				target="_blank"
				rel="noopener noreferrer"
				class="group flex items-center justify-between rounded-lg border border-warm-400 bg-surface px-5 py-4 transition-[border-color,background-color] duration-200 hover:border-ink hover:bg-paper-2"
			>
				<div class="flex items-center gap-3">
					<svg
						viewBox="0 0 24 24"
						fill="currentColor"
						class="size-4 shrink-0 text-warm-600"
						aria-hidden="true"
					>
						<path
							d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433a2.062 2.062 0 0 1-2.063-2.065 2.064 2.064 0 1 1 2.063 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"
						/>
					</svg>
					<div class="flex flex-col">
						<span class="font-mono text-[10px] uppercase tracking-[0.12em] text-warm-600"
							>LinkedIn</span
						>
						<span class="font-mono text-[14px] text-ink">julian-van-der-horst</span>
					</div>
				</div>
				<span
					aria-hidden="true"
					class="font-mono text-[14px] text-warm-600 transition-transform duration-200 group-hover:translate-x-0.5"
					>→</span
				>
			</a>

			<a
				href="https://github.com/Gulianrdgd"
				target="_blank"
				rel="noopener noreferrer"
				class="group flex items-center justify-between rounded-lg border border-warm-400 bg-surface px-5 py-4 transition-[border-color,background-color] duration-200 hover:border-ink hover:bg-paper-2"
			>
				<div class="flex items-center gap-3">
					<svg
						viewBox="0 0 24 24"
						fill="currentColor"
						class="size-4 shrink-0 text-warm-600"
						aria-hidden="true"
					>
						<path
							d="M12 0C5.374 0 0 5.373 0 12c0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23A11.509 11.509 0 0 1 12 5.803c1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576C20.566 21.797 24 17.3 24 12c0-6.627-5.373-12-12-12z"
						/>
					</svg>
					<div class="flex flex-col">
						<span class="font-mono text-[10px] uppercase tracking-[0.12em] text-warm-600"
							>GitHub</span
						>
						<span class="font-mono text-[14px] text-ink">Gulianrdgd</span>
					</div>
				</div>
				<span
					aria-hidden="true"
					class="font-mono text-[14px] text-warm-600 transition-transform duration-200 group-hover:translate-x-0.5"
					>→</span
				>
			</a>
		</div>
	</div>
</section>
