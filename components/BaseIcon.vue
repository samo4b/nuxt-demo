<script setup>
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

const props = defineProps({
  name: { type: String, required: true },
  prefix: { type: String, default: 'fas' }
})
</script>

<template>
  <FontAwesomeIcon :icon="{ prefix: props.prefix, iconName: props.name }" />
</template>
