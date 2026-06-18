<script lang="ts">
	import Header from '$lib/components/site/header.svelte';
	import Hero from '$lib/components/site/hero.svelte';
	import Approach from '$lib/components/site/approach.svelte';
	import Contact from '$lib/components/site/contact.svelte';
	import Footer from '$lib/components/site/footer.svelte';
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

</svelte:head>

<Header />
<main>
	<Hero />
	<Approach />
	<Contact />
</main>
<Footer />
