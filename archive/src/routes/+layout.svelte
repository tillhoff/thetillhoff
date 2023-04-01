<script>
	import Page from '$lib/Page.svelte';
	import Overlay from '$lib/Overlay.svelte';
</script>

<svelte:head>
  <link rel="icon" href="%sveltekit.assets%/favicon.ico" />
  <style>
    :root {
      --main-color: rgb(30, 40, 90);
    }
  </style>
  <script async defer data-website-id="7f22f9f8-e200-4b7d-a254-11105964f397" src="https://analytics.thetillhoff.de/umami.js"></script>
</svelte:head>

<Page centeredContent>
  <svelte:fragment slot="logo">
    <a href="/" style="color: #000; text-decoration: none;">
      <h1>thetillhoff</h1>
    </a>
  </svelte:fragment>

  <svelte:fragment slot="navigation">
    <a href="/">
      Start
    </a>
    <a href="/blog">
      Blog
    </a>
  </svelte:fragment>

  <slot slot="content"></slot>
</Page>

<Overlay visible autoCloseOnMount>
  <div slot="content">
    <img src="/images/icons/loader.svg" alt="loading..." style="height: 10rem;">
  </div>
</Overlay>
