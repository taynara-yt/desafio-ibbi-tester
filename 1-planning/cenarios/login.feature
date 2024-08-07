Feature: Login

  Scenario Outline: Validar login  pelo Menu
    Given acesso o site “<link>”
    And navego até o icone "<icone>"
    And clico no "<botão>" e preencho com UserName "<userName>" e clico no "<botão1>" e preencho com Password "<password>" válido
    And clico no "<botão2>"
    And "<mensagem>" é mostrada na tela
    Then sou direcionado para “<link>”

    Examples:
      | link                                 | icone   | botão    | botão1   | botão2 | userName                 | password     | mensagem                     |
      | https://www.tudocelular.com/compare/ | icLogin | userName | password | Log in | taynarasilvaam@gmail.com | T4yna4raTest | Log in realizado com sucesso |
      | https://www.tudocelular.com/compare/ | icLogin | userName | password | Log in | taynarasilvaam@gmail.com | T4yna4raTest | Log in realizado com sucesso |
      | https://www.tudocelular.com/compare/ | icLogin | userName | password | Log in | Taynara Silva            | T4yna4raTest | Log in realizado com sucesso |
      | https://www.tudocelular.com/compare/ | icLogin | userName | password | Log in | Taynara Silva            | T4yna4raTest | Log in realizado com sucesso |


  Scenario Outline: Validar login inválido pelo Menu
    Given acesso o site “<link>”
    And navego até o icone "<icone>"
    And clico no "<botão>"
    Then "<mensagem>" é mostrada na tela

    Examples:
      | link                                 | icone   | botão  | mensagem                                        |
      | https://www.tudocelular.com/compare/ | icLogin | Entrar | Você não inseriu email/nome de usuário ou senha |


  Scenario Outline: Validar que o Login não seja realizado com sucesso com UserName ou Email inválidos pela página Register e Forum
    Given acesso o site “<link1>”
    And clico no "<botão>" e preencho com UserName "<userName>" e clico no "<botão1>" e preencho com Password "<password>" inválido
    And clico no "<botão2>"
    And "<mensagem>" é mostrada na tela
    Then sou direcionado para “<link>”

    Examples:
      | link                                 | link1                                          | botão    | botão1   | botão2 | userName                 | password     | mensagem        |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/register.php | userName | password | Log in | taynarasilvaam@gmail.com | 1234         | Dados inválidos |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/register.php | userName | password | Log in | Taynara Silva            | *            | Dados inválidos |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/register.php | userName | password | Log in | taynarasilvaam@gmail.com |              | Dados inválidos |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/             | userName | password | Log in | *                        | T4yna4raTest | Dados inválidos |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/             | userName | password | Log in | 1234                     | T4yna4raTest | Dados inválidos |
      | https://www.tudocelular.com/compare/ | https://www.tudocelular.com/forum/             | userName | password | Log in |                          | T4yna4raTest | Dados inválidos |


  Scenario Outline: Validar que o Login não seja realizado com sucesso com UserName ou Email inválidos pelo Menu
    Given acesso o site “<link1>”
    And clico no "<botão>" e preencho com UserName "<userName>" e clico no "<botão1>" e preencho com Password "<password>" inválido
    And clico no "<botão2>"
    Then "<mensagem>" é mostrada na tela
    

    Examples:
      | link1                                          | botão    | botão1   | botão2 | userName                 | password     | mensagem        |
      | https://www.tudocelular.com/forum/register.php | userName | password | Log in | taynarasilvaam@gmail.com | 1234         | Dados inválidos |
      | https://www.tudocelular.com/forum/register.php | userName | password | Log in | Taynara Silva            | *            | Dados inválidos |
      | https://www.tudocelular.com/forum/register.php | userName | password | Log in | taynarasilvaam@gmail.com |              | Dados inválidos |
      | https://www.tudocelular.com/forum/             | userName | password | Log in | *                        | T4yna4raTest | Dados inválidos |
      | https://www.tudocelular.com/forum/             | userName | password | Log in | 1234                     | T4yna4raTest | Dados inválidos |
      | https://www.tudocelular.com/forum/             | userName | password | Log in |                          | T4yna4raTest | Dados inválidos |