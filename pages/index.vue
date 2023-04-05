<script setup>
const buttonClickCount = ref(0)
const buttonClickCountOptionsAPI = ref(0)

function buttonWasClicked (newCount) {
  buttonClickCount.value = newCount
}

function buttonWasClickedOptionsAPI (newCount) {
  buttonClickCountOptionsAPI.value = newCount
}
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
  </div>
</template>
