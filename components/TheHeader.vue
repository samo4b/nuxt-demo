<script setup>
const navigation = [
  { name: 'Homepage', target: '/' }
]
</script>

<template>
  <header>
    <div class="flex flex-row w-full h-12 bg-slate-400 gap-6 p-9 place-items-center text-white">
      <NuxtLink v-for="(entry, index) in navigation" :key="index" :to="entry.target">
        {{ entry.name }}
      </NuxtLink>
    </div>
  </header>
</template>
