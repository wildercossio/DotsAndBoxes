Given("visito la pagina Ajustes y registre 2 judadores previamente") do
    visit('/ajustes')
  end

  
  Then("puedo ver en pantalla el jugador ingresado {string}") do |jugador|
    expect(page).to have_content(jugador)
  end

  Then("puedo ver la pagina con el titulo {string}") do |titulo|
    expect(page).to have_content(titulo)
  end

  Then("puedo ver en pantalla el puntaje inicial de Natalia en {string}") do |puntaje|
    expect(page).to have_content(puntaje)
  end
  
  Then("puedo ver en pantalla el puntaje inicial de Tatiana en {string}") do |puntaje|
    expect(page).to have_content(puntaje)
  end
  Then("puedo ver en pantalla el turno {string}") do |turno|
    expect(page).to have_content(turno)
  end
  Then("puedo ver en pantalla el tablero {string}") do |tablero|
    expect(page).to have_css(tablero)
  end
  