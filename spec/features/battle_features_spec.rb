feature "Battle Features" do
  
  scenario 'players can enter names, submit and see names on screen' do
    sign_in_and_play
    expect(page).to have_content('John')
    expect(page).to have_content('Paul')
  end

  scenario 'display player hit points' do 
    visit('/')
    fill_in :player_one, with: 'John'      
    fill_in :player_two, with: 'Paul'      
    click_on('Submit')
    expect(page).to have_content('60')
  end

  scenario 'allows player 1 to attack player 2' do
    sign_in_and_play
    click_link('ATTACK')
    expect(page).to have_content('John attacked Paul')
  end

  scenario 'hitpoints have reduced' do
    sign_in_and_play
    click_link('ATTACK')
    click_link('OK')
    expect(page).to have_content('50')
  end


end
