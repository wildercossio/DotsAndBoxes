When("el turno deberia ser de {string}") do |turno|
    expect(page).to have_content(turno)
  end