Dado('que acesso a pagina de loja') do
  Capybara.reset_sessions!
  visit "https://www.webmotors.com.br/carros/estoque/?IdRevendedor=3834764&TipoVeiculo=carros&anunciante=concession%C3%A1ria%7Cloja"
end


