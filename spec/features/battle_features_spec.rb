
feature "Battle Features" do
  
  scenario "players can enter names, submit and see names on screen" do
    visit("/")
    fill_in('player1', with: 'John')
    fill_in('player2', with: 'Paul')
    click_on('Submit')
    expect(page).to have_content("Player 1: John")
    expect(page).to have_content("Player 2: Paul")
  end
end
