module.exports = {
  apps: [
    {
      name: 'my-app',
      script: './app.js',
      env: ${secrets.DOCKER_PASSWORD},

    },
  ],
};
