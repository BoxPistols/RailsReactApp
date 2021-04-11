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
          <v-card style="margin-top: 10px;">
            <v-card-title primary-title>
              <h3 class="headline">Snippet Title</h3>
            </v-card-title>
            <div style="margin: 4px 16px;">
              <textarea
                style="
                    width: 100%;
                    height: 300px;
                    background-color: #efefef;
                    padding: 16px;
                  "
              > Dummy </textarea>

              <v-card-actions>
                <v-btn text color="gray">Delete</v-btn>
                <v-spacer></v-spacer>
                <v-btn text color="blue">Update</v-btn>
              </v-card-actions>
            </div>
          </v-card>
        </v-flex>
      </v-layout>
    </v-container>
    <!-- /layout -->
  </v-app>
</template>

<script>
import SnippetsHeader from './packs/components/snippets-header'
export default {
  data: function () {
    return {
      title: 'Hello Vue on Rails!',
    }
  },
  components: {
    SnippetsHeader,
  },
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
