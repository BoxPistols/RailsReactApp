<!-- snippets-dialog-new -->
<template>
  <div>
    <v-dialog v-model="dialog" width="800">
      <template v-slot:activator="{ on, attrs }">
        <v-btn color="primary" dark v-bind="attrs" v-on="on">Add New Snippet</v-btn>
      </template>

      <v-card>
        <v-toolbar dark color="primary">
          <v-btn icon dark @click="dialog = false">
            <v-icon>mdi-close</v-icon>
          </v-btn>
          <v-toolbar-title>Settings</v-toolbar-title>
          <v-spacer></v-spacer>
          <v-toolbar-items>
            <v-btn dark text @click="dialog = false">Save</v-btn>
          </v-toolbar-items>
        </v-toolbar>

        <v-text-field
          v-model="postTitle"
          label="Snippet Title"
          required
          style="margin:20px; margin-top:30px"
        ></v-text-field>
        <v-flex d-flex>
          <v-text-field
            v-model="postLanguage"
            label="Language"
            required
            style="margin:20px; margin-bottom:0px; margin-left:20px"
          ></v-text-field>
        </v-flex>
        <v-card-text>
          <p>Snippet</p>
          <div style="width:100%;">
            <textarea
              style="width:100%; height:300px; background-color:#efefef; padding:3px"
              v-model="postContents"
            ></textarea>
          </div>
        </v-card-text>

        <v-divider></v-divider>

        <v-card-actions>
          <v-btn color="#grey lighten-4" text @click="dialog = false">Cancel</v-btn>
          <v-spacer></v-spacer>
          <v-btn color="red" text @click="toggleModal_New()">Add Snippet</v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      dialog: false,
      postTitle: 'postTitle...',
      postLanguage: 'postLanguage...',
      postContents: 'postContents...',
    }
  },
  methods: {
    toggleModal_New() {
      this.dialog = !this.dialog
    },
  },
}
</script>
