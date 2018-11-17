Given("visito la pagina Ajustes") do
    visit('/ajustes')
  end
  When("presiono el boton de {string}") do |boton|
    click_button('Guardar')
  end
  Then("puedo ver el formulario con el titulo {string}") do |titulo|
    expect(page).to have_content(titulo)
  end
  
  When("ingreso el nombre {string} para {string}") do |jugador, nombre|
    fill_in(nombre, with: jugador)
  end
  Then("puedo ver en pantalla el jugador {string} que añadi") do |jugador|
    expect(page).to have_content(jugador)
  end