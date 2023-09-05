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
  // eslint-disable-next-line
  console.log('Data from /api/hello using $fetch:', fetchData)
  // eslint-disable-next-line
  console.log('Data from /api/hello using useFetch:', data)
})
</script>

<template>
  <div class="h-full w-full flex flex-col items-center dark:bg-neutral-700">
    <BaseHeadline type="h1">
      <BaseText>Nuxt 3 Demo</BaseText>
      <BaseIcon name="cat" />
    </BaseHeadline>
    <BaseHeadlineOptionsAPI type="h1">
      <BaseText>Headline from Options API</BaseText>
    </BaseHeadlineOptionsAPI>
    <BaseText>Button: (Composition API)</BaseText>
    <BaseButton @button-clicked="buttonWasClicked">
      Click me!
    </BaseButton>
    <BaseText>Button click count: {{ buttonClickCount }}</BaseText>

    <BaseText>Button: (Options API)</BaseText>
    <BaseButtonOptionsAPI @button-clicked="buttonWasClickedOptionsAPI">
      Click me!
    </BaseButtonOptionsAPI>

    <BaseText>Button click count: {{ buttonClickCountOptionsAPI }}</BaseText>
    <BaseText>Data from /api/hello endpoint:</BaseText>
    <div v-for="(person, index) in data" :key="index" class="w-1/2 grid grid-cols-4">
      <div class="bg-teal-500 text-white p-2 text-black">
        gender: {{ person.gender }}
      </div>
      <div class="bg-amber-500 text-white p-2 text-black">
        firstName: {{ person.firstName }}
      </div>
      <div class="bg-yellow-500 text-white p-2 text-black">
        lastName: {{ person.lastName }}
      </div>
      <div class="bg-lime-500 text-white p-2 text-black">
        age: {{ person.age }}
      </div>
    </div>
  </div>
</template>
