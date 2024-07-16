module.exports = {
  apps: [
    {
      name: 'my-app',
      script: './app.js',
      env: { ${sercet.DOCKER_PORT} },

    },
  ],
};
