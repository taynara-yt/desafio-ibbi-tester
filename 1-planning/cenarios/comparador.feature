Feature: Comparador

  Scenario: Comparar dois ou três Smartphones diferentes
    Given que acesso "<link>"
    When clico no campo de "<botão>"
    And insiro o primeiro "<smartphone>"
    And insiro o segundo "<smartphone1>"
    And insiro o terceiro "<smartphone2>"
    And clico no botão "<botão1>"
    Then deve exibir o resultado com o comparativo dos smartphones e o nome do smartphone com o melhor custo benefício
    Examples:
      | link                                 | botão     | botão1   | smartphone | smartphone1 | smartphone2    |
      | https://www.tudocelular.com/compare/ | Pesquisar | Comparar | iPhone 14  | iPhone 15   | iPhone 15 Plus |
      | https://www.tudocelular.com/compare/ | Pesquisar | Comparar | iPhone 14  | iPhone 15   |                |


  Scenario: Comparar dois Smartphones iguais
    Given que acesso "<link>"
    When clico no campo de "<botão>"
    And insiro o primeiro "<smartphone>"
    And insiro o segundo "<smartphone1>"
    Then deve exibir "<mensagem>"
    Examples:
      | link                                 | botão     | smartphone | smartphone1 | mensagem                           |
      | https://www.tudocelular.com/compare/ | Pesquisar | iPhone 14  | iPhone 14   | Por favor, selecione outro celular |


  Scenario: Validar smartphones inválidos
    Given que acesso "<link>"
    When clico no campo de "<botão>"
    And insiro o primeiro "<smartphone>"
    And insiro o segundo "<smartphone1>"
    And clico no botão "<botão1>"
    Then deve exibir "<mensagem>"
    Examples:
      | link                                 | botão     | botão1   | smartphone | smartphone1 | mensagem                           |
      | https://www.tudocelular.com/compare/ | Pesquisar | Comparar | thulin     | thulin      | Smartphone inválido ou inexistente |
      | https://www.tudocelular.com/compare/ | Pesquisar | Comparar | \          | \           | Smartphone inválido ou inexistente |
      | https://www.tudocelular.com/compare/ | Pesquisar | Comparar | 12345      | 12345       | Smartphone inválido ou inexistente |
      | https://www.tudocelular.com/compare/ | Pesquisar | Comparar | 12345      | 12345       | Smartphone inválido ou inexistente |
      | https://www.tudocelular.com/compare/ | Pesquisar | Comparar | Iphone 14  | thulin      | Smartphone inválido ou inexistente |
      | https://www.tudocelular.com/compare/ | Pesquisar | Comparar | Iphone 0   | thulin      | Smartphone inválido ou inexistente |
