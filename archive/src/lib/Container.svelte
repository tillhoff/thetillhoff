<script>
  export let textContainer = false;
  export let vertical = false;
  export let spaced = false;
  export let verticalCenteredContent = false;
  export let horizontalCenteredContent = false;
  export let fullWidth = false;
  export let centered = false;
  export let hidden = false;

  export let form = false;
</script>

<div id={$$props.id} class={$$props.class} style={$$props.style} class:textContainer class:fullWidth class:centered class:vertical class:spaced class:verticalCenteredContent class:horizontalCenteredContent class:hidden class:form>
  <slot>
    Empty Container component
  </slot>
</div>

<style>
  div {
    display: flex;
    /* margin-bottom: auto; */
  }
  
  .textContainer {
    /* max-width: 50rem; */
    max-width: 1150px;
    padding-left: 2rem;
    padding-right: 2rem;
  }

  .fullWidth {
    width: 100%;
  }

  .centered {
    margin-left: auto;
    margin-right: auto;
  }
    
  .vertical {
    flex-direction: column;
  }
  .vertical.spaced > :global(*) {
    margin-top: 1rem;
  }
  .vertical.spaced > :global(*:first-child) {
    margin-top: 0;
  }
  .spaced:not(.vertical) > :global(*) {
    margin-left: 1rem;
  }
  .spaced:not(.vertical) > :global(*:first-child) {
    margin-left: 0;
  }

  .verticalCenteredContent {
    justify-content: center;
  }
  .horizontalCenteredContent {
    align-items: center;
  }

  /* form */

  div.form :global(label) {
    margin-top: 1rem;
  }

  div.form :global(button),
  div.form :global(.button) {
    margin-top: 3rem;
    margin-left: 0;
    width: 10rem;
  }

  /* hidden */

  .hidden {
    display: none !important;
  }
</style>
