Given("visito la pagina de Ajustes") do
    visit("/ajustes")
  end
  
  Then("deberia ver el titulo que dice {string}") do |titulo|
    expect(page).to have_content(titulo)
  end
  
  Given("visito la pagina Jugar con amigos") do
    visit("/jugarConAmigos")
  end
  
  Then("deberia ver en pantalla el nombre {string}") do |nombre|
    expect(page).to have_content(nombre)
  end

  When("presiono {string}") do |boton|
    click_link(boton)
  end