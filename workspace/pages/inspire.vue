<template>
  <v-layout>
    <v-flex class="text-center">
      <img src="/v.png" alt="Vuetify.js" class="mb-5" />
      <blockquote class="blockquote">
        &#8220;First, solve the problem. Then, write the code.&#8221;
        <footer>
          <small>
            <em>&mdash;John Johnson</em>
          </small>
        </footer>
      </blockquote>
    </v-flex>
    <v-flex>
      <img src="/v.png" @click="sayHello" />
      <h2>Say Hello Times: {{ count }}</h2>
    </v-flex>
  </v-layout>
</template>

<script lang="ts">
import Vue from "vue";
import Component from 'vue-class-component';

@Component
export default class Hello extends Vue {
  msg: string = "Welcome to Your Vue.js App";
  count: number = 0;
  sayHello(): number {
    this.count++;
    return this.count;
  }
}
</script>