const cucumber = require('cypress-cucumber-preprocessor').default

const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      on('file:preprocessor',cucumber())
    },
    specPattern: 'cypress/e2e/**/*.feature',
    baseUrl: 'https://www.tudocelular.com/compare/', // Altere para o URL da sua aplicação
    supportFile: 'cypress/support/e2e.js',
  },
});
