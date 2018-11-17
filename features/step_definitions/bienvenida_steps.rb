Given("visito la pagina Bienvenida") do
    visit("/")
  end
  
Then("deberia ver el texto de {string}") do |mensaje|
    expect(page).to have_content(mensaje)
end

And("deberia ver el titulo de {string}") do |titulo|    
    page.find('h2', visible: :all, text: titulo)#me costo encontrar este codigo 
end