Given("visito la pagina jugarConAmigos") do
    visit("/jugarConAmigos")
  end
  
  Then("deberia ver la caja pintada en el tablero {string}") do |cajaPintada|
    expect(page).to have_css(cajaPintada)
  end