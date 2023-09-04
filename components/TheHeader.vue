<script setup>
const navigation = [
  { name: 'Homepage', target: '/' }
]

const darkMode = ref(false)
const emit = defineEmits(['toggle-dark-mode'])

function toggleDarkMode() {
  darkMode.value = !darkMode.value
  emit('toggle-dark-mode', darkMode.value)
}
</script>

<template>
  <header>
    <div class="sticky flex flex-row w-full h-12 bg-slate-400 dark:bg-fuchsia-900 gap-6 p-9 place-items-center text-white">
      <NuxtLink v-for="(entry, index) in navigation" :key="index" :to="entry.target">
        {{ entry.name }}
      </NuxtLink>
      <BaseButton @button-clicked="toggleDarkMode">
        Toggle dark mode: {{ darkMode }}
      </BaseButton>
    </div>
  </header>
</template>
