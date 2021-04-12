<!-- snippets-cards -->
<template>
  <v-row>
    <v-card style="margin-top: 10px;" v-for="snippets in snippetCards" :key="snippets.index">
      <v-card-title primary-title>
        <h3 class="headline">{{ snippets.title }}</h3>
      </v-card-title>
      <div style="margin: 4px 16px;">
        <textarea class="card__textarea" v-model="snippets.contents"></textarea>
        <v-card-actions>
          <v-btn text color="gray">Delete</v-btn>
          <v-spacer></v-spacer>
          <v-btn text color="blue">Update</v-btn>
        </v-card-actions>
      </div>
    </v-card>
  </v-row>
</template>

<script>
import axios from 'axios'

export default {
  data: function () {
    return {
      snippetCards: [
        '',
        // dummy test { title: 'title...', contents: 'contents...' },
      ],
      allData: [''], // axios　全データの一時保管、受け子Array
    }
  },
  mounted() {
    this.getAllSnippetsData() // 読み込み時マウントする、メソッドで作成した関数
  },
  methods: {
    getAllSnippetsData() {
      // axiosでjsonを取りに行く
      axios.get('/snippets.json').then((res) => {
        this.allData = res.data // 一度受け子Arrayに入れる
        this.snippetCards = this.allData // v-forに入れるオブジェクトに全データを入れる
      })
    },
  },
  components: {},
}
</script>

<style scoped lang="scss">
.card__textarea {
  width: 100%;
  height: 300px;
  background-color: lighten(gray, 42%);
  padding: 16px;
}
</style>
