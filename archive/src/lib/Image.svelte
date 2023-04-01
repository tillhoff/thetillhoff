<script>
  export let src = '';
  export let alt = '';
</script>

<img id={$$props.id} class={$$props.class} style={$$props.style} {src} {alt} on:click />

<style>
  img {
    height: 100%;
    max-width: 100%;
    display: block;
    object-fit: cover;
    /* border-radius: 5px; */
  }
</style>
