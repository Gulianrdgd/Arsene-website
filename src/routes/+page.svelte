<script lang="ts">
	import Header from '$lib/components/site/header.svelte';
	import Hero from '$lib/components/site/hero.svelte';
	import Work from '$lib/components/site/work.svelte';
	import Approach from '$lib/components/site/approach.svelte';
	import Contact from '$lib/components/site/contact.svelte';
	import Footer from '$lib/components/site/footer.svelte';

	function goContact() {
		const el = document.querySelector('#contact');
		if (el) {
			const top = el.getBoundingClientRect().top + window.scrollY - 60;
			window.scrollTo({ top, behavior: 'smooth' });
		}
	}
</script>

<svelte:head>
	<title>Arsene — Software op jouw voorwaarden</title>
	<meta
		name="description"
		content="Arsene bouwt digitale infrastructuur voor het MKB die je daarna zélf kunt beheren. Geen lock-in, geen onzin."
	/>
</svelte:head>

<Header onContact={goContact} />
<main>
	<Hero onContact={goContact} />
	<Work />
	<Approach />
	<Contact />
</main>
<Footer />
