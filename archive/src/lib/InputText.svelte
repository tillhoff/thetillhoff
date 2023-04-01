<script>
  import { createEventDispatcher } from 'svelte';
  const dispatch = createEventDispatcher();

  // Actionable elements like buttons and inputs can be grouped with a `div.group`

  export let big = false;
  export let large = false;
  export let huge = false;

  export let inline = false;

  export let borderless = false;

  export let value = '';

</script>

<input type="text" bind:value on:blur id={$$props.id} class={$$props.class} style={$$props.style} class:big class:large class:huge class:inline class:borderless>

<style>
  input {
    /* positioning, size */
    /* 0.5 is kind of a random number, but applied on all paddings */
    padding: calc( 1rem * 0.5);
    height: 1rem;
    min-width: 1rem;

    font-size: inherit;

    /* unify styling */
    display: inline;
    float: left;
    outline: none;

    /* border */
    border-style: solid;
    border-width: 2px;
    border-radius: 5px;
  }

  /* sizes */
  input
  {
    padding: calc(1rem * 0.5);
    height: 1rem;
    min-width: 1rem;
    font-size: 1rem;
  }
  input.large {
    padding: calc(1rem * 1.2 * 0.5);
    height: calc(1rem * 1.2);
    min-width: calc(1rem * 1.2);
    font-size: calc(1rem * 1.2);
  }
  input.big {
    padding: calc(1rem * 1.4 * 0.5);
    height: calc(1rem * 1.4);
    min-width: calc(1rem * 1.4);
    font-size: calc(1rem * 1.4);
  }

  /* contains multiple actionable elements */
  :global(.group) > input{
    border-radius: 0px;
    border-left: none;
  }

  :global(.group) > input:first-child{
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
    border-left: solid;
  }

  :global(.group) > input:last-child{
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
  }
</style>
