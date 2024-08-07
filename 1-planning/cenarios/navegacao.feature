Feature: Navegação Menu

  Scenario Outline: Verificar que todas as páginas do Menu retornam corretamente
    Given acesso o site “<link>”
    When clico no “<item>”
    Then sou direcionado para “<link1>”

    Examples:
      | link                                 | item        | link1                                                      |
      | https://www.tudocelular.com/compare/ | TudoAndroid | https://www.tudocelular.com/android/                       |
      | https://www.tudocelular.com/compare/ | TudoWindows | https://www.tudocelular.com/windows/                       |
      | https://www.tudocelular.com/compare/ | TudoApple   | https://www.tudocelular.com/apple/                         |
      | https://www.tudocelular.com/compare/ | TudoPlanos  | https://www.tudocelular.com/planos/                        |
      | https://www.tudocelular.com/compare/ | Reviews     | https://www.tudocelular.com/celulares/provas.html          |
      | https://www.tudocelular.com/compare/ | Compare     | https://www.tudocelular.com/compare/                       |
      | https://www.tudocelular.com/compare/ | Celulares   | https://www.tudocelular.com/celulares/fichas-tecnicas.html |
