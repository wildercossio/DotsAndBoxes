Given("visito la pagina Bienvenida") do
    visit("/")
  end
  
Then("deberia ver el texto de {string}") do |mensaje|
    expect(page).to have_content(mensaje)
end

And("deberia ver el titulo de {string}") do |titulo|    
    page.find('h2', visible: :all, text: titulo)#me costo encontrar este codigo 
end

Then("deberia ver la barra de carga {string}") do |barraDeProgreso|
    expect(page).to have_css(barraDeProgreso)
  end