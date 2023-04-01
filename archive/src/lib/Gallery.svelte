<script>
  import Container from '$lib/Container.svelte';
	import { onMount } from 'svelte';
  import { self } from 'svelte/internal';

  export let mainImageSource = "";
  export let galleryImageSources = [""];

  let galleryImage;
</script>

<Container id={$$props.id} class={$$props.class} style={$$props.style} vertical fullWidth>
  <div class="galleryMain">
    <img bind:this={galleryImage} src={mainImageSource} alt="Active entry of the gallery" />
  </div>
  <Container class="galleryList" spaced>
    {#each galleryImageSources as galleryImageSource}
      <img src={galleryImageSource} alt="Entry in the gallery" on:mousemove="{e => {e}}" on:click={e=> {
        if (galleryImage.src != e.target.src) {
          galleryImage.src = e.target.src;
        }
      }} />
    {/each}
  </Container>
</Container>

<style>
  div {
    width: 100%;
    margin-bottom: 1rem;
  }

  :global(img) {
    border-radius: 5px;
  }

  .galleryMain :global(img) {
    width: 100%;
  }

  :global(.galleryList) :global(img) {
    height: 4rem;
  }
</style>