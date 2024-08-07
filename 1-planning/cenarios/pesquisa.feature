Feature: Pesquisar

  Scenario: Validar redirecionamento para compra
    Given que acesso "<link>"
    When clico no campo de "<botão>"
    And insiro o "<smartphone>"
    And pressiono Enter
    And deve redirecionar para "<link1>"
    And clico no botão "<botão1>"
    Then deve redirecionar para "<link2>"

    Examples:
      | link                                 | botão     | botão1 | smartphone | link1                                    | link2                                                                                                                                                                 |
      | https://www.tudocelular.com/compare/ | Pesquisar | price  | redmi      | https://www.tudocelular.com/?sName=redmi | https://produto.mercadolivre.com.br/MLB-4563006870-celular-xiaomi-redmi-13-c-dual-sim-128-gb-4ram-_JM?searchVariation=182284926991&matt_tool=64616970&forceInApp=true |