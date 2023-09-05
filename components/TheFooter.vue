<script setup>
const interval = ref()
const time = ref()

onMounted(() => {
  interval.value = setInterval(() => {
    time.value = Intl.DateTimeFormat(navigator.language, {
      hour: 'numeric',
      minute: 'numeric',
      second: 'numeric'
    }).format()
  }, 1000)
})

onDeactivated(() => {
  clearInterval(interval)
  time.value = null
})
</script>

<template>
  <footer class="sticky flex w-full h-24 bottom-0 bg-teal-700 dark:bg-fuchsia-900 text-white font-bold text-2xl justify-center place-items-center">
    {{ time }}
  </footer>
</template>
