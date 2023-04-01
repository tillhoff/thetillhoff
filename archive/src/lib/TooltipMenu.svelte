<script>
  export let direction = "bottom";
  export let secondaryDirection = "right";
</script>

<div class="tooltip" style={$$props.style}>
  <slot name="button"></slot>
  {#if direction == 'bottom' && secondaryDirection == 'right'}
  <div class="menu" style="top: 100%; left: 0;">
    <slot name="menu"></slot>
  </div>
  {/if}
  {#if direction == 'bottom' && secondaryDirection == 'left'}
  <div class="menu" style="top: 100%; right: 0;">
    <slot name="menu"></slot>
  </div>
  {/if}
  {#if direction == 'top' && secondaryDirection == 'right'}
  <div class="menu" style="bottom: 100%; left: 0;">
    <slot name="menu"></slot>
  </div>
  {/if}
  {#if direction == 'top' && secondaryDirection == 'left'}
  <div class="menu" style="bottom: 100%; right: 0;">
    <slot name="menu"></slot>
  </div>
  {/if}
</div>

<style>
  .tooltip {
    position: relative;
  }

  .tooltip .menu {
    visibility: hidden;
    position: absolute;
    width: max-content;
    border: 1px solid red;
  }

  .tooltip:hover .menu {
    visibility: visible;
  }
</style>