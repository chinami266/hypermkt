<template>
  <div id="hello">
    <img src="http://vuejs.org/images/logo.png">
    <h1>{{ msg }}</h1>
    <h2 class="subtitle">User</h2>
    <p>nickname: {{ user.nickname }}</p>
    <child></child>
  </div>
</template>

<script>
import Child from './Child.vue'

export default {
  name: 'hello',
  props: ['user'],
  components: {
    'child': Child
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  methods: {
    hello: () => {
      return 'world'
    }
  }
}
</script>

<style scoped>
#hello {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

.subtitle {
  font-size: 16px;
}

</style>
