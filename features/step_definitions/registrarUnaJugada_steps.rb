  
  When("presiono la jugada {string}") do |jugada|
    find(jugada).click
  end

  Then("deberia ver la linea dibujada en el tablero {string}") do |lineaDibujada|
    find(lineaDibujada).click
  end