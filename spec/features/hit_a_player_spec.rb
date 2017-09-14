feature 'hitting' do
  scenario 'hit player 1 and get confirmation' do
    sign_in_and_play
    click_link 'Hit'
    expect(page).to have_content 'Zoe HIT Thomas'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_link 'Hit'
    click_link 'OK'
    expect(page).not_to have_content 'Thomas: 60HP'
    expect(page).to have_content 'Thomas: 50HP'
  end
end
