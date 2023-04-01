<script>
  import Image from '$lib/Image.svelte';

  export let name = "Name is missing";
  export let src = "";
  export let href = "";
</script>

<a {href} class="elementPanel">
  <Image {src} alt="Image of {name}"></Image>
  <span>{name}</span>
</a>

<style>
  /* vertical bordered outer-border slightly-padded article */
  .elementPanel {
    display: flex;
    flex-direction: column;

    border-width: 2px;
    border-radius: calc(2 * 5px);

    padding: 0.75rem;

    background-color:hsla(0, 0%, 100%, 1);
  }

  /* hover link styling */
  a:hover, a:focus {
    background-color: hsla(0, 0%, 70%, 1);
  }

  span {
    margin-top: 1rem;
  }
</style>