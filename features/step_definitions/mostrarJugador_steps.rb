 
  Then("deberia ver el nombre {string}") do |nombre|
    expect(page).to have_content(nombre)
  end
  