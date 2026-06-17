<script lang="ts">
	import Header from '$lib/components/site/header.svelte';
	import Hero from '$lib/components/site/hero.svelte';
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
	<title>arsene — digitale infrastructuur die écht werkt</title>
	<meta
		name="description"
		content="Ik koppel je oude websites en systemen, automatiseer het handwerk en maak je bedrijf AI-ready — zo gebouwd dat je het zelf kunt beheren. Geen lock-in, geen onzin."
	/>
</svelte:head>

<Header onContact={goContact} />
<main>
	<Hero onContact={goContact} />
	<Approach />
	<Contact />
</main>
<Footer />
