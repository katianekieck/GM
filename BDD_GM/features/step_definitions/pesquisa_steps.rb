Quando('pesquiso marca {string}') do |marca|
  @marca = marca
  find("input[id=searchBar]").set marca
  click_link @marca
  sleep 4
end

Quando('pesquiso modelo {string}') do |modelo|
  @modelo = modelo
  find("input[id=searchBar]").set modelo
  click_link @modelo
  sleep 4
end

Quando('pesquiso todas as versões') do
  find(".Filters__line", :text => "Todas as versões").click
  sleep 4
end

Quando('seleciono a primeira versão') do
  find(:xpath, "//div[@id='root']/main/div/div[2]/div/div[2]/div/div[4]/a[1]").click
  sleep 4
end

Quando('seleciono a versao {string}') do |versao|
  @versao = versao
  find(".Filters__line.Filters__line__result", :text => @versao).click
  sleep 4
  click_link @versao
  sleep 4
end

Então('devo ver o seguinte texto: {string}') do |texto|
  @texto = texto
  sleep 10
  page_downcased = page.body.downcase
  text_downcased = texto.downcase   
  expect(page_downcased).to have_content text_downcased
end
