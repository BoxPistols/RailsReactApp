<!-- snippets-header -->
<template>
  <div>
    <v-card flat tile>
      <v-toolbar color="blue lighten-4" dense>
        <v-app-bar-nav-icon></v-app-bar-nav-icon>
        <v-toolbar-title>{{ title }}</v-toolbar-title>
        <v-spacer></v-spacer>
        <v-btn icon>
          <v-icon>mdi-magnify</v-icon>
        </v-btn>
        <!-- <v-btn icon>
          <v-icon>mdi-heart</v-icon>
        </v-btn>-->
        <SnippetsDialogNew />
        <v-btn icon>
          <v-icon>mdi-dots-vertical</v-icon>
        </v-btn>
      </v-toolbar>
    </v-card>
  </div>
</template>

<script>
import SnippetsDialogNew from './snippets-dialog-new'
export default {
  data: function () {
    return {
      title: 'Snippets App Vue on Rails',
    }
  },
  components: {
    SnippetsDialogNew,
  },
}
</script>

<style scoped>
</style>
