<script lang="ts">
	import portrait from '$lib/assets/julian-hero.png';

</script>

<section class="mx-auto max-w-275 px-10 py-14">
	<div class="grid items-end gap-8 md:grid-cols-[1.05fr_0.95fr]">
		<div class="pb-14 pt-12">
			<h1
				class="mt-5 max-w-[15ch] font-sans font-bold tracking-tighter text-ink"
				style="font-size: clamp(36px, 5.2vw, 60px); line-height: 1.0;"
			>
				Digitale infrastructuur die <span class="marker">écht werkt</span>
			</h1>
			<p class="mt-6 max-w-[46ch] font-sans text-[18px] leading-[1.55] text-warm-800">
				Alles gaat digitaal en steeds makkelijker, maar jij zit vast aan oude websites en systemen
				die niet samenwerken. Ik bedenk slimme oplossingen, en denk met je mee over waar AI in jouw
				bedrijf écht iets oplost.
			</p>
		</div>
		<div class="flex justify-center md:justify-end">
			<enhanced:img
				src={portrait}
				alt="Julian van der Horst, arsene"
				width="1261"
				height="1400"
				class="h-auto w-full max-w-110 select-none"
				draggable="false"
			/>
		</div>
	</div>
</section>
