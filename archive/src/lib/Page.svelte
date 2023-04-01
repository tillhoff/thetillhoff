<script>
  import Container from '$lib/Container.svelte';
  import Image from '$lib/Image.svelte';
  import Button from '$lib/Button.svelte';
  import Footer from '$lib/Footer.svelte';
  
  export let centeredContent = false;

  let mobileNavigationVisible = false;

  $: innerWidth = 0;
  $: centeredContentStyle = (centeredContent) ? ' margin-top: auto;' : '';

</script>

<svelte:window bind:innerWidth/>

<Container fullWidth vertical style="border-bottom: 4px solid; border-color: var(--main-color);">
  <Container fullWidth verticalCenteredContent horizontalCenteredContent>
    <Container fullWidth textContainer horizontalCenteredContent style="padding-left: 1rem; padding-right: 1rem; min-height: 5rem">
      {#if innerWidth < 1150}
      <slot name="logo"></slot>
      <Button big borderless style="margin-left: auto;" on:click={e => {mobileNavigationVisible=!mobileNavigationVisible;}}>
        <Image src="/images/icons/three-stripes.svg" alt="Menu" ></Image>
      </Button>
      {:else}
      <slot name="logo" class="navigation"></slot>
      <div class="navigation" style="margin-left: auto;">
        <slot name="navigation"></slot>
      </div>
      {/if}
    </Container>
  </Container>
</Container>

{#if innerWidth < 1150 && mobileNavigationVisible}
<Container style="margin-bottom: auto; margin-top: auto;">
  <Container class="navigation" vertical spaced style="font-size:1.5rem;">
    <slot name="navigation" class="navigation"></slot>
  </Container>
</Container>
{:else}
<Container fullWidth style="margin-bottom: auto;{centeredContentStyle}">
  <slot name="content">
    This page is currently under development.
  </slot>
</Container>
{/if}

<Footer></Footer>

<style>
  :global(body) {
    min-height: 100%;
    display: flex;
    justify-content: normal;
    align-items: center;
    flex-direction: column;
    margin: 0;

    font-size: 1rem;
  }

  :global(body),
  :global(.overlay) {
    background-color: rgb(200, 200, 200);
  }

  :global(*) {
    font-family: "Open Sans", sans-serif;
    color: hsla(0, 0%, 10%, 1);
    /*color: rgb(200,200,200);*/
    box-sizing: content-box; /* remove strange behaviour of some native elements - looking at you _button_! */
    border-color: hsla(0, 0%, 20%, 1);
    /* text-decoration-color: hsla({{ .css.colors.primaryColor.hue }}, {{ .css.colors.primaryColor.saturation }}, {{ .css.colors.primaryColor.lightness }}, {{ .css.colors.primaryColor.alpha }}); */
    transition: all 0.1s ease-in-out;
  }

  :global(p) {
    line-height: 1.5;
  }
  
  :global(.centeredContent) {
    margin-top: auto;
  }

  .navigation :global(a) {
    padding: 1rem;
  }

  .navigation :global(a:not(.logo)) {
    margin-right: 2rem;
  }

  .navigation :global(a:hover) {
    background-color: hsla(0, 0%, 70%, 1);
  }
</style>
