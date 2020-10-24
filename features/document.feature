#language:pt

Funcionalidade: Pesquisar

    Para que eu possa pesquisar o estoque de automóveis
    Sendo um usuário
    Posso pesquisar no sistema com a marca, modelo e versao previamente cadastrados.

Cenario: Pesquisa Marca  

Dado que eu acesso a a pagina principal
    Quando eu pesquiso marca com "honda"
    Então devo ser autenticado com sucesso
    E devo ver a seguinte mensagem: "Honda"
   

Cenario: Pesquisa Modelo

    Dado que eu acesso a pagina principal
    Quando eu pesquiso modelo com "City"
    Então devo ver a seguinte mensagem: "Honda City"

@temp
Cenario: Pesquisa Estoque

    Dado que eu acesso a pagina de estoque
    Quando eu pesquiso versao com "Honda City"
    Então devo ver o resultado na mensagem: "Honda City"
