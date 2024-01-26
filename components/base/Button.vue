<script setup lang="ts">
const counter = ref(0)

const emits = defineEmits(['buttonClicked'])

function onButtonClicked () {
  counter.value += 1
  emits('buttonClicked', counter.value)
}
</script>

<template>
  <button type="button" class="text-white font-bold py-2 px-4 bg-pink-600 hover:bg-pink-800 rounded" @click="onButtonClicked">
    <slot />
  </button>
</template>
