module.exports = {
  // mode: "production",
  test: /\.vue(\.erb)?$/,
  use: [
    {
      loader: "vue-loader",
      options: {
        loaders: {
          scss: "vue-style-loader!css-loader!sass-loader", // <style lang="scss">
          sass: "vue-style-loader!css-loader!sass-loader?indentedSyntax", // <style lang="sass">
        },
      },
    },
  ],
};
