  
  When("presiono la jugada {string}") do |jugada|
    find(jugada).click
  end

  Then("deberia ver la linea dibujada en el tablero {string}") do |lineaDibujada|
    find(lineaDibujada).click
  end

  Then("deberia ver que el turno es del siguiente jugador {string}") do |turno|
    expect(page).to have_content(turno)
  end

 
  