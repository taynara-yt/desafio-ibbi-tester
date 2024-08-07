import { Given, And, When, Then } from 'cypress-cucumber-preprocessor/steps';

    Given('Set base URL', () => { 
         //Acesso a pagina de comparação de smartphones
        cy.visit("https://www.tudocelular.com/compare/");
    });


    And("clico no campo de {string}", function (string) {
        cy.get('#sb1_text', { timeout: 10000 }).should('be.visible').click(); // Clica no campo de pesquisa
  
    });

    And("insiro o primeiro {string}", (smartphone1)  =>{
        //digito o primeiro smartphone
         cy.get('#sb1_text', { timeout: 10000 }).should('be.visible').type(smartphone1);
         cy.contains(smartphone1).click(); //seleciono o primeiro smartphone
    });

    And("insiro o segundo {string}", (smartphone2)  =>{
         //digito o segundo smartphone
         cy.get('#sb1_text', { timeout: 10000 }).should('be.visible').type(smartphone2);
         cy.contains(smartphone2).click(); //seleciono o primeiro smartphone
    });

    And("clico no botão {string}",  (botao) =>{
      cy.get('#comparabtn', { timeout: 10000 }).should('be.visible').click(); // Clica no botão de comparação
      });


    //verificar o resultado da comparação
    Then("deve exibir o resultado com o comparativo dos Smartphones e nome do celular com o melhor custo beneficio", () => {
       cy.get('.phone_column').then(($columns) => {
          let custBenef = []; // array para o custo beneficio
          let nomes = []; // array para nomes

          
    // Itera sobre as duas primeiras colunas para capturar custo-benefício e nomes
    $columns.slice(0, 2).each((index, column) => {
       const $column = Cypress.$(column);
       const custBenefText = $column.find('.phone_column_features b').first().text().trim();
       const textNome = $column.find('.compare_big_modelname').first().text().trim();

    if (custBenefText && textNome) {
       custBenef.push(parseFloat(custBenefText)); // Adiciona custo-benefício
       nomes.push(textNome); // Adiciona nome

          }
     });

    // Verifica se há custo beneficio disponiveis
    cy.wrap(custBenef).should('have.length', 2);

    // Encontrar o maior custo-beneficio e seu nome 
    const maxCostBenefit = Math.max(...custBenef);
    const maxIndex = custBenef.indexOf(maxCostBenefit);
    const maxCostBenefitName = nomes[maxIndex];

    // Verificar se o maior custo-beneficio e nome estão visíveis na página
    cy.get('.phone_column_features b').contains(maxCostBenefit.toFixed(1)).should('be.visible');
    cy.get('.compare_big_modelname').contains(maxCostBenefitName).should('be.visible');

   
    cy.log(`O melhor custo-benefício é ${maxCostBenefit.toFixed(1)}/10 para o smartphone: ${maxCostBenefitName}`); // Log do resultado
  });
});

