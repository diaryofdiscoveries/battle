feature 'check player hitpoints' do
  scenario 'player hit points should show on page' do
    visit('/')
    fill_in :player_1_name, with: 'Thomas'
    fill_in :player_2_name, with: 'Zoe'
    click_button 'Submit'
    expect(page).to have_content 'Zoe: 60HP'
  end
end
