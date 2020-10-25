Dado('que acesso a pagina de estoque') do
  Capybara.reset_sessions!
  visit "https://www.webmotors.com.br/carros/estoque?tipoveiculo=carros&estadocidade=estoque"
end

# Adicione aqui novas frazes para estoque