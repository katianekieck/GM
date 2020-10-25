#language:pt

Funcionalidade: Pesquisar estoque de uma determinada loja

    Para que possa pesquisar o estoque de automóveis de uma loja
    Sendo um usuário
    Posso pesquisar no sistema com a marca, modelo e versao previamente cadastrados.

@loja @marca
Cenario: Pesquisa Marca  
    Dado que acesso a pagina de loja
    Quando pesquiso marca "honda"
    Então devo ver o seguinte texto: "Honda" 
   
@loja @modelo
Cenario: Pesquisa Modelo
    Dado que acesso a pagina de loja
    Quando pesquiso modelo "Honda City"
     E pesquiso todas as versões
     E seleciono a primeira versão
    Então devo ver o seguinte texto: "Honda City"
    
@loja @versao
Cenario: Pesquisa Versão
    Dado que acesso a pagina de loja
    Quando pesquiso modelo "Honda City" 
     E pesquiso todas as versões
     E seleciono a versao "1.5 PERSONAL 16V FLEX 4P AUTOMÁTICO"
    Então devo ver o seguinte texto: "1.5 PERSONAL 16V FLEX 4P AUTOMÁTICO"
