<script lang="ts">
type Heading = 'h1' | 'h2' | 'h3'

export default {
  props: {
    type: { type: String as PropType<Heading>, required: true }
  },
  data () {
    return {
      fontSize: {
        h1: 'text-3xl',
        h2: 'text-2xl',
        h3: 'text-xl'
      }
    }
  }
}
</script>

<template>
  <component :is="$props.type" class="font-bold" :class="$data.fontSize[$props.type]">
    <slot />
  </component>
</template>
