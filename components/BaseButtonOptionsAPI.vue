<script lang="ts">
export default {
  emits: ['buttonClicked'],
  data () {
    return {
      counter: 0
    }
  },
  methods: {
    onButtonClicked () {
      this.counter++
      this.$emit('buttonClicked', this.counter)
    }
  }
}
</script>

<template>
  <button type="button" class="text-white font-bold py-2 px-4 bg-pink-600 hover:bg-pink-800 rounded" @click="onButtonClicked">
    <slot />
  </button>
</template>
