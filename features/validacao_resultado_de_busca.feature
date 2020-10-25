#language:pt

Funcionalidade: Pesquisar na página de resultado de busca da Webmotors

    Para que possa pesquisar o estoque de automóveis
    Sendo um usuário
    Posso pesquisar no sistema com a marca, modelo e versao previamente cadastrados.

@estoque @marca
Cenario: Pesquisa Marca  
    Dado que acesso a pagina de estoque
    Quando pesquiso marca "honda"
    Então devo ver o seguinte texto: "Honda" 
     E devo ver o seguinte texto: "carros encontrados"
   
@estoque @modelo
Cenario: Pesquisa Modelo
    Dado que acesso a pagina de estoque
    Quando pesquiso modelo "Honda City"
     E pesquiso todas as versões
     E seleciono a primeira versão
    Então devo ver o seguinte texto: "Honda City"
     E devo ver o seguinte texto: "carros encontrados"
    
@estoque @versao
Cenario: Pesquisa Versão
    Dado que acesso a pagina de estoque
    Quando pesquiso modelo "Honda City" 
     E pesquiso todas as versões
     E seleciono a versao "1.5 PERSONAL 16V FLEX 4P AUTOMÁTICO"
    Então devo ver o seguinte texto: "1.5 PERSONAL 16V FLEX 4P AUTOMÁTICO"
     E devo ver o seguinte texto: "carros encontrados"
