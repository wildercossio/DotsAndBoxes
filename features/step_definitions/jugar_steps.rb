Given("visito la pagina de Ajustes") do
    visit("/ajustes")
  end
  
  Then("deberia ver el titulo que dice {string}") do |titulo|
    expect(page).to have_content(titulo)
  end
  
  When("presiono {string}") do |boton|
    click_link(boton)
  end