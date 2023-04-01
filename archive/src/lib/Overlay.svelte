<script>
  import Button from '$lib/Button.svelte';
  import { onMount } from 'svelte';

  // Default configuration is perfect for page loader

  export let visible = false;
  export let enableManualClose = false;
  export let autoCloseOnMount = false;

  onMount(() => {
    if (visible && autoCloseOnMount) {
      visible = false;
    };
	});
  
</script>

{#if enableManualClose}
<div style={$$props.style} on:click={e => {visible=true;}}>
  <slot name="activator"></slot>
</div>
<div class:visible class="overlay" on:click={e => {visible=false;}}>
  <Button style="position: fixed; right: 3rem; top: 3rem;">
    close
  </Button>
  <div class="content" on:click={e => {e.stopPropagation();}}>
    <slot name="content">empty overlay!</slot>
  </div>
</div>
{:else}
<div class:visible class="overlay">
  <div class="content">
    <slot name="content">empty overlay!</slot>
  </div>
</div>
{/if}
  
<style>
  .overlay {
    position: fixed;
    visibility: hidden;

    width: 100%;
    height: 100%;

    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
  }

  .content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);

    color: red;

    /*background-color: rgba(255,255,255,0.9); /* Black background with opacity */
  }

  .visible {
    animation: slide-menu 2s ease-in-out 1 forwards;
  }

  @keyframes slide-menu {
    from {
      visibility: hidden;
    }
    to {
      visibility: visible;
    }
  }
</style>