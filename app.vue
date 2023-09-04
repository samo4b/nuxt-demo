<script setup lang="ts">
let darkMode = ref('')
function toggleDarkMode() {
  if (darkMode.value === 'dark') darkMode.value = ''
  else darkMode.value = 'dark'
}
</script>

<template>
  <div :class="darkMode" class="flex flex-col min-h-screen">
    <TheHeader @toggle-dark-mode="toggleDarkMode" />
    <NuxtPage class="grow" />
    <TheFooter />
  </div>
</template>
