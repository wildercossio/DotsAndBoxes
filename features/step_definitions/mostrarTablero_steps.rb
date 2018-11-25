
Then("deberia ver el tablero {string}") do |tablero|
    expect(page).to have_css(tablero)
  end
  Then("deberia ver los puntos {string}") do |puntos|
    expect(page).to have_content(puntos)
  end