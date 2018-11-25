Then("deberia ver el turno {string} porque es el primer jugador") do |turno|
    expect(page).to have_content(turno)
  end