var path = require("path");
var webpack = require("webpack");
var isProd = (process.env.NODE_ENV == 'prod' || process.env.NODE_ENV == 'production');
var plugins = []
var minimizers = []
const MinifyPlugin = require("babel-minify-webpack-plugin")

var loaders = [{
  loader: 'coffee-loader',
  options: { 
    sourceMap:true,
    transpile: {
      presets:[["@babel/env", {"targets": {"browsers": ["last 2 Chrome versions"]}}]],
      plugins:[["@babel/plugin-transform-react-jsx"]]
    }
  }
}]

if (isProd) {
    loaders.push("source-map-loader")
    plugins.push(new webpack.DefinePlugin({'process.env.NODE_ENV': JSON.stringify('production')}))
    plugins.push(new MinifyPlugin())
}

module.exports = [{
    plugins: plugins,
    entry: "./src/index.coffee",
    output: {
        path: path.resolve(__dirname, "build/"),
        filename: "index.js",
        sourceMapFilename: 'index.js.map'
    },
    devServer: { inline: true, hot: true },
    resolve: { 
      extensions: [".js",".cjsx",".coffee"], 
      alias:{
        "react": "preact/compat",
        "react-dom/test-utils": "preact/test-utils",
        "react-dom": "preact/compat",
      }
  
    },
    devtool: 'source-map',
    module: { rules:[{
      enforce: 'pre',
      test: /\.coffee|cjsx$/,
      exclude: /node_modules/,
      include: /src/,
      loaders:loaders
    }]},
    // use below to split all node modules into separate vendor.js file, will need to add another script tag
    // optimization: {
    //     namedChunks:true,
    //     splitChunks:{
    //         name:"vendor",
    //         cacheGroups:{
    //           node_vendors:{
    //               test:/[\\/]node_modules[\\/]/,
    //               chunks: "all",
    //               priority:1
    //           }
    //       }
    //     }
    // }
}];