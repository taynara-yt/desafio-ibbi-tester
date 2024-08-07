Feature: Posts

  Scenario: Validar redirecionamento post
    Given que acesso “<link>”
    When clico na primeira notícia da lista
    Then sou redirecionado para “<link1>”

    Examples:
      | link                         | link1                                                                                                 |
      | https://www.tudocelular.com/ | https://www.tudocelular.com/mercado/noticias/n224506/ninguem-precisa-xbox-desenvolvedor-jogo-ps5.html |

