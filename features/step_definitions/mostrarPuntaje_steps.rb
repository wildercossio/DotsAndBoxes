Then("deberia ver el puntaje {string}") do |puntaje|
    expect(page).to have_content(puntaje)
  end