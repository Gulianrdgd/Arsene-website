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
		content="Ik denk graag mee over digitale infrastructuur die écht werkt. Van websites tot AI-oplossingen."
	/>
	<meta name="author" content="Julian van der Horst" />
	<link rel="canonical" href="https://arsene.nl/" />

	<meta property="og:type" content="website" />
	<meta property="og:url" content="https://arsene.nl/" />
	<meta property="og:locale" content="nl_NL" />
	<meta property="og:site_name" content="arsene" />
	<meta property="og:title" content="arsene — digitale infrastructuur die écht werkt" />
	<meta
		property="og:description"
		content="Ik denk graag mee over digitale infrastructuur die écht werkt. Van websites tot AI-oplossingen."
	/>

	<meta name="twitter:card" content="summary" />
	<meta name="twitter:title" content="arsene — digitale infrastructuur die écht werkt" />
	<meta
		name="twitter:description"
		content="Ik denk graag mee over digitale infrastructuur die écht werkt. Van websites tot AI-oplossingen."
	/>

	{@html `<script type="application/ld+json">${JSON.stringify({
		"@context": "https://schema.org",
		"@type": "ProfessionalService",
		"name": "arsene",
		"url": "https://arsene.nl",
		"email": "info@arsene.nl",
		"description": "Digitale infrastructuur, systeemintegratie en AI-advies voor bedrijven.",
		"founder": { "@type": "Person", "name": "Julian van der Horst" },
		"address": { "@type": "PostalAddress", "addressLocality": "Nijmegen", "addressCountry": "NL" },
		"areaServed": "NL"
	})}</script>`}
</svelte:head>

<Header onContact={goContact} />
<main>
	<Hero />
	<Approach />
	<Contact />
</main>
<Footer />
