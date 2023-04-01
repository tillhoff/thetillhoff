<script>

  // Actionable elements like buttons and inputs can be grouped with a `div.group`

  export let big = false;
  export let large = false;
  export let huge = false;

  export let inline = false;

  export let borderless = false;

  export let href = '';
</script>

{#if href}
<a href={href} id={$$props.id} class="button {$$props.class}" style={$$props.style} class:big class:large class:huge class:inline class:borderless on:click>
  <slot>Button</slot>
</a>
{:else}
<button id={$$props.id} class={$$props.class} style={$$props.style} class:big class:large class:huge class:inline class:borderless on:click>
  <slot>Button</slot>
</button>
{/if}

<style>
/* general styling */
button,
.button {
  /* positioning, size */
  /* 0.5 is kind of a random number, but applied on all button paddings */
  padding: calc( 1rem * 0.5);
  height: 1rem;
  min-width: 1rem;

  text-align: center;

  font-size: inherit;

  /* unify button styling */
  display: inline;
  float: left;
  outline: none;
  cursor: pointer;
  text-decoration: none;

  /* border */
  border-style: solid;
  border-width: 2px;
  border-radius: 5px;

  /* default button colors
  color: hsla({{ .css.colors.buttonColor.hue }}, {{ .css.colors.buttonColor.saturation }}, {{ .css.colors.buttonColor.lightness }}, {{ .css.colors.buttonColor.alpha }});
  background-color: hsla({{ .css.colors.buttonBgColor.hue }}, {{ .css.colors.buttonBgColor.saturation }}, {{ .css.colors.buttonBgColor.lightness }}, {{ .css.colors.buttonBgColor.alpha }});
  border-color: hsla({{ .css.colors.borderColor.hue }}, {{ .css.colors.borderColor.saturation }}, {{ .css.colors.borderColor.lightness }}, {{ .css.colors.borderColor.alpha }});
  */

  margin-left: 1rem;
}

button:first-child,
.button:first-child {
  margin-left: 0;
}

/* sizes */
button,
.button {
  padding: calc(1rem * 0.5);
  height: 1rem;
  min-width: 1rem;
  font-size: 1rem;
}

button.large,
.button.large {
  padding: calc(1rem * 1.2 * 0.5);
  height: calc(1rem * 1.2);
  min-width: calc(1rem * 1.2);
  font-size: calc(1rem * 1.2);
}
button.big,
.button.big {
  padding: calc(1rem * 1.4 * 0.5);
  height: calc(1rem * 1.4);
  min-width: calc(1rem * 1.4);
  font-size: calc(1rem * 1.4);
}
button.huge,
.button.huge {
  padding: calc(1rem * 1.6 * 0.5);
  height: calc(1rem * 1.6);
  min-width: calc(1rem * 1.6);
  font-size: calc(1rem * 1.6);
}

/* image button sizes */
button.image,
.button.image {
  padding: 0;
  height: calc(1rem + (1rem * 0.5));
}
button.large.image,
.button.large.image {
  padding: 0;
  height: calc(1rem * 1.2 + (1rem * 1.2 * 0.5));
}
button.big.image,
.button.big.image {
  padding: 0;
  height: calc(1rem * 1.4 + (1rem * 1.4 * 0.5));
}
button.huge.image,
.button.huge.image {
  padding: 0;
  height: calc(1rem * 1.6 + (1rem * 1.6 * 0.5));
}

/* inline */
button.inline,
.button.inline {
  float: none;
}

/* borderless */
button.borderless,
.button.borderless {
  border: none;
}

/* contains multiple actionable elements */
:global(.group) > button,
:global(.group) > .button {
  border-radius: 0px;
  border-left: none;
  margin-left: 0;
}

:global(.group) > button:first-child,
:global(.group) > .button:first-child {
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  border-left: solid;
}

:global(.group) > button:last-child,
:global(.group) > .button:last-child {
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}


/* icon button */
button :global(.icon),
.button :global(.icon) {
  height: calc(1rem * 1.2);
  min-width: calc(1rem * 1.2);
  /* padding: calc(1rem * 0.5 - (1rem * 1.2 - 1rem) / 2); */

  /* center contents */
  display: flex;
  justify-content: center;
  align-items: center;
}
button.large :global(.icon),
.button.large :global(.icon) {
  height: calc(1rem * 1.2 * 1.2);
  min-width: calc(1rem * 1.2 * 1.2);
  /* padding: calc(1rem * 1.2 * 0.5 - (1rem * 1.2 * 1.2 - 1rem * 1.2) / 2); */
}
button.big :global(.icon),
.button.big :global(.icon) {
  height: calc(1rem * 1.2 * 1.4);
  min-width: calc(1rem * 1.2 * 1.4);
  /* padding: calc(1rem * 1.4 * 0.5 - (1rem * 1.2 * 1.4 - 1rem * 1.4) / 2); */
}
button.huge :global(.icon),
.button.huge :global(.icon) {
  height: calc(1rem * 1.2 * 1.6);
  min-width: calc(1rem * 1.2 * 1.6);
  /* padding: calc(1rem * 1.6 * 0.5 - (1rem * 1.2 * 1.6 - 1rem * 1.6) / 2); */
}
</style>
