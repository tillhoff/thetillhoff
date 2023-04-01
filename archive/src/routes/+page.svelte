<script>
  import Container from '$lib/Container.svelte';
  import Button from '$lib/Button.svelte';

  import SVG_github from '$lib/SVGs/github.svelte';
  import SVG_linkedin from '$lib/SVGs/linkedin.svelte';
  import SVG_xing from '$lib/SVGs/xing.svelte';
</script> 

<Container slot="content" vertical centered textContainer verticalCenteredContent horizontalCenteredContent style="max-width: 50rem;">
  <h1>
    Hey there! 👋 I'm Till.
  </h1>

  <p>
    Here are some links to learn more about me:
  </p>
  
  <Container centered>
    <Button big href="https://github.com/thetillhoff">
      <SVG_github></SVG_github>
      <svg viewBox="0 0 24 24" class="button icon">
        <use xlink:href="#github"></use>
      </svg>
    </Button>
    <Button big href="https://linkedin.com/in/thetillhoff">
      <SVG_linkedin></SVG_linkedin>
      <svg viewBox="0 0 24 24" class="button icon">
        <use xlink:href="#linkedin"></use>
      </svg>
    </Button>
    <Button big href="https://xing.com/profile/Till_Hoffmann21">
      <SVG_xing></SVG_xing>
      <svg viewBox="0 0 24 24" class="button icon">
        <use xlink:href="#xing"></use>
      </svg>
    </Button>
  </Container>
</Container>
