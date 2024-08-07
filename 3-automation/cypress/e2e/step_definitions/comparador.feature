
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

