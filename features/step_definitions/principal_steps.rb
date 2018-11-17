Given("visito la pagina Menu principal") do
    visit('/principal')
  end
  
  Then("deberia ver el titulo {string}") do |titulo|
    expect(page).to have_content(titulo)
  end
  
  Then("deberia ver la opcion {string}") do |opcion|
    expect(page).to have_content(opcion)
  end