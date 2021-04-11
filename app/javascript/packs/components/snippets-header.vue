<template>
  <div>
    <!-- header // -->
    <v-card flat tile>
      <v-toolbar color="blue lighten-4" dense>
        <v-app-bar-nav-icon></v-app-bar-nav-icon>
        <v-toolbar-title>{{ title }}</v-toolbar-title>
        <v-spacer></v-spacer>
        <v-btn icon>
          <v-icon>mdi-magnify</v-icon>
        </v-btn>
        <v-btn icon>
          <v-icon>mdi-heart</v-icon>
        </v-btn>
        <v-btn icon>
          <v-icon>mdi-dots-vertical</v-icon>
        </v-btn>
        <v-btn flat v-on:click="togglePostModal">New Snippet</v-btn>
      </v-toolbar>
    </v-card>
    <!-- /header -->
  </div>
</template>

<script>
// import SnippetsHeader from './packs/components/snippets-header'
export default {
  data: function () {
    return {
      title: 'Hello Vue on Rails!',
    }
  },
  components: {
    // SnippetsHeader,
  },
}
</script>

<style scoped>
</style>
