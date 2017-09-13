feature 'hitting' do
  scenario 'hit player 1 and get confirmation' do
    sign_in_and_play
    click_link 'Hit'
    expect(page).to have_content 'Zoe HIT Thomas'
  end
end
