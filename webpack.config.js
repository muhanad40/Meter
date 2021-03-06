module.exports = {
  entry: "./entry.coffee",
  output: {
    path: __dirname + "/bundle",
    filename: "bundle.js",
    publicPath: "/bundle/"
  },
  module: {
    loaders: [
      { test: /\.scss$/, loaders: ["style", "css", "sass"] },
      { test: /\.coffee$/, loader: "coffee-loader" },
      { test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: "url-loader?limit=10000&minetype=application/font-woff" },
      { test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: "file-loader" },
      { test: /\.cjsx$/, loaders: ['coffee', 'cjsx']}
    ]
  }
}