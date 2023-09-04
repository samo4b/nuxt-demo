<script setup lang="ts">
const buttonClickCount = ref(0)
const buttonClickCountOptionsAPI = ref(0)

const fetchData = await $fetch('/api/demo')
const { data } = await useFetch('/api/demo')

function buttonWasClicked (newCount : number) {
  buttonClickCount.value = newCount
}

function buttonWasClickedOptionsAPI (newCount : number) {
  buttonClickCountOptionsAPI.value = newCount
}

onMounted(() => {
  console.log('Data from /api/hello using $fetch:', fetchData)
  console.log('Data from /api/hello using useFetch:', data)
})
</script>

<template>
  <div class="w-full flex flex-col items-center">
    <BaseHeadline type="h1">
      Nuxt 3 Demo
      <BaseIcon name="cat" />
    </BaseHeadline>
    <BaseHeadlineOptionsAPI type="h1">
      Headline from Options API
    </BaseHeadlineOptionsAPI>
    <div>Button: (Composition API)</div>
    <BaseButton @button-clicked="buttonWasClicked">
      Click me!
    </BaseButton>
    Button click count: {{ buttonClickCount }}

    <div>Button: (Options API)</div>
    <BaseButtonOptionsAPI @button-clicked="buttonWasClickedOptionsAPI">
      Click me!
    </BaseButtonOptionsAPI>
  
    Button click count: {{ buttonClickCountOptionsAPI }}

    <p>Data from /api/hello endpoint:</p>
    <div class="w-1/2 grid grid-cols-4" v-for="(person, index) in data" :key="index">
      <div class="bg-teal-500 text-white p-2">gender: {{ person.gender }}</div>
      <div class="bg-amber-500 text-white p-2">firstName: {{ person.firstName }}</div>
      <div class="bg-yellow-500 text-white p-2">lastName: {{ person.lastName }}</div>
      <div class="bg-lime-500 text-white p-2">age: {{ person.age }}</div>
    </div>
  </div>
</template>
