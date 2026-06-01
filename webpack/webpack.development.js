/**
 * For the full copyright and license information, please view the
 * LICENSE.md file that was distributed with this source code.
 */
/* eslint-disable */
const {configureDevServer} = require('./webpack.parts');
const {HotAcceptPlugin} = require('hot-accept-webpack-plugin');
const webpack = require('webpack');

exports.developmentConfig = ({
  port, publicPath, serverAddress, siteURL, entriesArray, isDevServer = false
}) => {
  const plugins = [];
  const dev = process.env.NODE_ENV !== 'production';

  // Only enable HMR when using webpack serve (dev server)
  if (isDevServer) {
    plugins.push(
      new webpack.HotModuleReplacementPlugin(),
      new HotAcceptPlugin({
        test: Object.keys(entriesArray).map(el => `${el}.js`)
      }),
    );
  }

  return {
    devtool: 'source-map',
    devServer: isDevServer ? configureDevServer(serverAddress, publicPath, port, siteURL) : undefined,
    watchOptions: {
      ignored: /node_modules/,
    },
    plugins,
  };
};
/* eslint-enable */
