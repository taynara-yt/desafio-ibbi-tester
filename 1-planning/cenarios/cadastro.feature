Feature: Cadastro

  Scenario Outline: Validar que a página de cadastro seja direcionada corretamente pelo Menu
    Given acesso o site “<link>”
    When navego até o icone "<icone>"
    And clico no "<botão>"
    Then sou direcionado para “<link1>”

    Examples:
      | link                                 | icone   | link1                                          | botão     |
      | https://www.tudocelular.com/compare/ | iclogin | https://www.tudocelular.com/forum/register.php | cadastrar |


  Scenario Outline: Validar que o cadastro seja realizado com sucesso com UserName ou Email pela página Register e Forum
    Given acesso o site “<link1>”
    And clico no "<botão>" e preencho com UserName "<userName>" e clico no "<botão1>" e preencho com Password "<password>" válido
    And clico no "<botão2>"
    And "<mensagem>" é mostrada na tela
    Then sou direcionado para “<link>”

    Examples:
      | link                                 | link1                                          | botão    | botão1   | botão2       | userName                 | password     | mensagem                   |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/register.php | userName | password | cadastrar    | taynarasilvaam@gmail.com | T4yna4raTest | Cadastro feito com sucesso |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/             | userName | password | cadastrar    | taynarasilvaam@gmail.com | T4yna4raTest | Cadastro feito com sucesso |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/register.php | userName | password | cadastrar    | Taynara Silva            | T4yna4raTest | Cadastro feito com sucesso |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/             | userName | password | cadastrar    | Taynara Silva            | T4yna4raTest | Cadastro feito com sucesso |




  Scenario Outline: Validar que o cadastro seja realizado com sucesso com UserName ou Email pelo Menu
    Given acesso o site “<link1>”
    And navego até o icone "<icone>"
    And clico no clico no "<botão2>"
    And preencho com UserName "<userName>" e clico no "<botão1>" e preencho com Password "<password>" válido
    And "<mensagem>" é mostrada na tela
    Then sou direcionado para “<link>”

    Examples:
      | link1                                 | link                                          |icone  | botão    | botão1   | botão2       | userName                 | password     | mensagem                   |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/register.php |iclogin| userName | password | cadastrar    | taynarasilvaam@gmail.com | T4yna4raTest | Cadastro feito com sucesso |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/             |iclogin| userName | password | cadastrar    | taynarasilvaam@gmail.com | T4yna4raTest | Cadastro feito com sucesso |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/register.php |iclogin| userName | password | cadastrar    | Taynara Silva            | T4yna4raTest | Cadastro feito com sucesso |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/             |iclogin| userName | password | cadastrar    | Taynara Silva            | T4yna4raTest | Cadastro feito com sucesso |

