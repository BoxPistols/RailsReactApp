<template>
  <v-app id="app">
    <snippets-header />
    <!-- layout -->
    <v-container style="height: 1000px; max-width: 2400px;">
      <v-layout>
        <v-flex xs4>
          <div style="margin: 10px;">
            <h2>Snippets Shortcut</h2>
            <ul>
              <li>Snippet Title</li>
            </ul>
          </div>
        </v-flex>
        <v-flex xs8>
          <snippets-cards />
        </v-flex>
      </v-layout>
    </v-container>
    <!-- /layout -->
  </v-app>
</template>

<script>
import SnippetsHeader from './packs/components/snippets-header'
import SnippetsCards from './packs/components/snippets-cards'
export default {
  data: function () {
    return {
      title: 'Hello Vue on Rails!',
    }
  },
  components: {
    SnippetsHeader,
    SnippetsCards,
  },
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
