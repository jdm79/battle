feature "Battle Features" do
  
  scenario 'players can enter names, submit and see names on screen' do
    sign_in_and_play
    expect(page).to have_content('John')
    expect(page).to have_content('Paul')
  end

  scenario 'display player hit points' do 
    visit('/')
    fill_in :player_one, with: 'John'      # fill_in('player1', with: 'John')
    fill_in :player_two, with: 'Paul'      # fill_in('player2', with: 'Paul')
    click_on('Submit')
    expect(page).to have_content('100')
  end

  scenario 'allows player 1 to attack player 2' do
    sign_in_and_play
    visit('/attack')
    click_button('attack_player_two')
    vist('/play')
    expect(page).to have_content('90')
  end

end
