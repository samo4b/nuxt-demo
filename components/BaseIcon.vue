<script setup>
// eslint-disable-next-line
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

const props = defineProps({
  name: { type: String, required: true },
  prefix: { type: String, default: 'fas' }
})
</script>

<template>
  <FontAwesomeIcon class="dark:text-white" :icon="{ prefix: props.prefix, iconName: props.name }" />
</template>
