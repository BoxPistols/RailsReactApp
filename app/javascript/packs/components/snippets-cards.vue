<template>
  <div>
    <v-card style="margin-top: 10px;" v-for="snippets in snippetCards" :key="snippets.index">
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
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      snippetCards: ['', ''],
    }
  },
  components: {},
}
</script>

<style scoped>
</style>
