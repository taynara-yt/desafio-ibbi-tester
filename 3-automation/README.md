# 📱🔍 Comparador de Smartphones

Este projeto contém automação de testes para comparar dois smartphones diferentes usando Cypress e Cucumber. O teste acessa a URL [TudoCelular](https://www.tudocelular.com/compare/).

## 📋 Pré-requisitos

Antes de começar, você precisa ter instalado:

- **Node.js** (v16 ou superior)
- **npm** (v8 ou superior) - Incluído com o Node.js
- **Visual Studio Code** (opcional, mas recomendado para desenvolvimento)

## 🛠️ Instalação

1. **Clone o repositório:**

    ```bash
    git clone https://github.com/taynara-yt/desafio-ibbi-tester
    cd 3-automation
    ```

2. **Instale o Cypress e o Cucumber:**

    Execute os seguintes comandos para instalar o Cypress e o plugin Cucumber:

    ```bash
    npm install cypress --save-dev
    npm install cypress-cucumber-preprocessor --save-dev
    ```

   Estes comandos instalarão o Cypress e o plugin `cypress-cucumber-preprocessor`, bem como qualquer outra dependência definida no arquivo `package.json`.

3. **Instale as demais dependências:**

    ```bash
    npm install
    ```

   Este comando instalará as dependências restantes definidas no `package.json`.

## 🚀 Executando os Testes

1. **Abra o Cypress Test Runner:**

    Execute o comando abaixo para abrir o Cypress Test Runner:

    ```bash
    npx cypress open
    ```

2. **Execute a feature:**

    No Cypress Test Runner, selecione a feature `comparador.feature`.

## 📝 Definições dos Steps

### Arquivo `comparador.feature`:

```gherkin
Feature: Comparador

  Scenario Outline: Comparar dois Smartphones diferentes
    Given Set base URL
    And clico no campo de "<campo>"
    And insiro o primeiro "<smartphone1>"
    And insiro o segundo "<smartphone2>"
    And clico no botão "<botao>"
    Then deve exibir o resultado com o comparativo dos Smartphones e nome do celular com o melhor custo beneficio

  Examples:
    | link                                 | campo     | smartphone1 | smartphone2   | botao     | 
    | https://www.tudocelular.com/compare/ | Pesquisar | iPhone 14   | iPhone 15     | Comparar  |
