feature 'check player hitpoints' do
  scenario 'player hit points should show on page' do
    sign_in_and_play
    expect(page).to have_content 'Zoe: 60HP'
  end
end
