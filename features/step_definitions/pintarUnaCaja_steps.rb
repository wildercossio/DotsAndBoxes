Given("visito la pagina jugarConAmigos") do
    visit("/jugarConAmigos")
  end
  
  Then("deberia ver la caja pintada en el tablero {string}") do |cajaPintada|
    find(cajaPintada).click
  end