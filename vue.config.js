module.exports = {
  css: {
    loaderOptions: {
      sass: {
        prependData: `@import "@/stylesheets/vue.scss";`,
      },
    },
  },
};
