Given("visito la pagina Menu principal") do
    visit('/principal')
  end
  Then("deberia ver la opcion {string}") do |opcion|
    expect(page).to have_content(opcion)
  end