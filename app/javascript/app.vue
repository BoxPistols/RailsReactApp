<!-- app -->
<template>
  <v-app id="app">
    <snippets-header />
    <!-- layout -->
    <v-container>
      <v-row>
        <v-col cols="12" md="4">
          <div style="margin: 10px;">
            <h2>Snippets Shortcut</h2>
            <ul>
              <li>Snippet Title</li>
            </ul>
          </div>
        </v-col>
        <v-col cols="12" md="8">
          <snippets-cards />
        </v-col>
      </v-row>
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
  min-width: 100vw;
}
/deep/ .c-header {
  width: 100vw;
  z-index: 10;
  opacity: 0.95;
  .v-toolbar__content {
    padding: 0px;
    > .v-btn.v-btn--icon {
      margin: 0;
    }
  }
}
</style>
