module.exports = {
  entry: "./entry.coffee",
  output: {
    path: __dirname,
    filename: "bundle.js"
  },
  module: {
    loaders: [
      { test: /\.scss$/, loaders: ["style", "css", "sass"] },
      { test: /\.coffee$/, loader: "coffee-loader" }
    ]
  }
}