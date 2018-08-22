
feature "Testing infastructure" do
  scenario "can run app and check page content" do
    visit("/")
    expect(page).to have_content("Testing infrastructure working!")
  end

  scenario "players can enter names, submit and see names on screen" do
    visit("/")
    fill_in('Player 1: ', with: 'John')
    fill_in('Player 2: ', with: 'Paul')
    click('Submit')
    expect(page).to have_content("Player 1: John")
    #expect(page).to have_content("Player 1: John")
  end
end
