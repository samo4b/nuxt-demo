// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-11-01',
  devtools: {
    enabled: true
  },
  modules: [
    '@nuxtjs/tailwindcss',
    "@nuxt/test-utils/module",
    '@nuxt/eslint'
  ],
  css: [
    '@fortawesome/fontawesome-svg-core/styles.css'
  ],
  build: {
    transpile: ['@fortawesome/vue-fontawesome']
  }
})