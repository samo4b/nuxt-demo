<script setup>
defineProps({
  type: 'h1' | 'h2' | 'h3'
})
const fontSize = {
  h1: 'text-3xl',
  h2: 'text-2xl',
  h3: 'text-xl'
}
</script>

<template>
  <component :is="$props.type" class="font-bold" :class="fontSize[$props.type]">
    <slot />
  </component>
</template>
