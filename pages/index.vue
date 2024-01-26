<script setup lang="ts">
const buttonClickCount = ref(0)

const fetchData = await $fetch('/api/demo')
const { data } = await useFetch('/api/demo')

function buttonWasClicked (newCount : number) {
  buttonClickCount.value = newCount
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
    <BaseHeadline type="h1" class="m-auto">
      <BaseText>Nuxt 3 Demo</BaseText>
    </BaseHeadline>
  </div>
</template>
