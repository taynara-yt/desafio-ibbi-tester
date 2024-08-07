
Feature: Validar listagem de celulares

  Scenario: Filtrar celulares por atributos diferentes 
    Given acesso “<link>”
    When seleciono a “<opcao>” desejada
    Then verifique se os celulares estão listados conforme filtrado

    Examples:
      | link  		          			           	               |  opção	                |				
      |https://www.tudocelular.com/celulares/fichas-tecnicas.html  |  Hardware              |
      |https://www.tudocelular.com/celulares/fichas-tecnicas.html  |  Custo beneficio       |
      |https://www.tudocelular.com/celulares/fichas-tecnicas.html  |  Data	                |
      |https://www.tudocelular.com/celulares/fichas-tecnicas.htm   |  Faixa de preço        |
      |https://www.tudocelular.com/celulares/fichas-tecnicas.html  |  Sistema Operacional   |