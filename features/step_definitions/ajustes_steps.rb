Given("visito la pagina Menu principal y veo sus opciones") do
    visit('/principal')
end

When("presiono el boton {string}") do |boton|
    click_link(boton)
end
  
Then("deberia ver el titulo {string} para configurar antes de iniciar una partida") do |titulo|
    expect(page).to have_content(titulo)
end

Then("deberia ver el formulario con el titulo {string}") do |titulo|
    expect(page).to have_content(titulo)
end