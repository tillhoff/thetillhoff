<script>
	import { slide } from 'svelte/transition';
</script>

<div transition:slide>
  <slot></slot>
</div>
