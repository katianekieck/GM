
Dado(/^que eu acesso a a pagina principal$/) do
  visit "https://www.webmotors.com.br/"
end

Quando(/^eu pesquiso marca com "([^"]*)"$/) do |marca|
  @marca = marca
  find("input[id=searchBar]").set marca
  click_link "Honda"
  sleep 4
end

Então(/^devo ser autenticado com sucesso$/) do
  
end

Então(/^devo ver a seguinte mensagem: "([^"]*)"$/) do |arg1|

end

Dado(/^que eu acesso a pagina principal$/) do
  visit "https://www.webmotors.com.br/"
end

Quando(/^eu pesquiso modelo com "([^"]*)"$/) do |modelo|
@modelo = modelo
find("input[id=searchBar]").set modelo
click_link "Honda City"
sleep 4
find(".Filters__line", :text => "Todas as versões").click
sleep 4
click_link("1.5 EX 16V FLEX 4P AUTOMÁTICO")
end

Dado(/^que eu acesso a pagina de estoque$/) do
  visit "https://www.webmotors.com.br/carros/estoque?tipoveiculo=carros&estadocidade=estoque"
end

Quando(/^eu pesquiso versao com "([^"]*)"$/) do |versao|
@versao = versao
sleep 6
find("input[id=searchBar]").set versao
click_link "Honda City"
sleep 10
find(:xpath, "//div[@id='root']/main/div/div[2]/div/div/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[3]").click
sleep 10
click_link("1.5 DX 16V FLEX 4P MANUAL")
end

Então(/^devo ver o resultado na mensagem: "([^"]*)"$/) do |arg1|
  
end