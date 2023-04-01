<table id={$$props.id} class={$$props.class} style={$$props.style}>
  <slot></slot>
</table>

<style>
  table {
    border-collapse: collapse;
  }

  table > :global(tr) {
    height: 3rem;
    border-bottom: 1px solid;
  }
  table > :global(tr:last-child) {
    border-bottom: none;
  }

  table > :global(tr) > :global(th),
  table > :global(tr) > :global(td) {
    border-left: 1px solid;
    padding: 0.5rem;
  }
  table > :global(tr) > :global(th):first-child,
  table > :global(tr) > :global(td):first-child {
    border-left: none;
  }

  table > :global(tr) > :global(th) {
    text-align: left;
  }
</style>
