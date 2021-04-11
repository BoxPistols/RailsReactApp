<!-- app -->
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
    return {}
  },
  components: {
    SnippetsHeader,
    SnippetsCards,
  },
}
</script>

<style scoped lang="scss">
$bgColor: #4c4a6f;

.theme--dark {
  /deep/ .v-application--wrap {
    background-color: $bgColor;
  }
  /deep/ .v-card {
    background-color: darken($bgColor, 10%);
  }
}
/deep/ .v-application--wrap {
  overflow-x: hidden;
  overflow-y: scroll;
  padding-top: 60px;
}
/deep/ .c-header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 10;
  opacity: 0.95;
}
</style>
