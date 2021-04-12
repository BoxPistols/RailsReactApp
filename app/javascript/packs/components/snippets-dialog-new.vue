<!-- snippets-dialog-new -->
<template>
  <div>
    <v-dialog v-model="dialog" width="800">
      <template v-slot:activator="{ on, attrs }">
        <v-btn color="primary" dark v-bind="attrs" v-on="on">Open Dialog</v-btn>
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
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      dialog: false,
    }
  },
}
</script>
