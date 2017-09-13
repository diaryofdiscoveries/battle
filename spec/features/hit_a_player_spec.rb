feature 'hit a player and get conifrmation' do
  scenario 'hit player and get confirm' do
    sign_in_and_play
    click_link 'Hit'
    expect(page).to have_content 'Zoe HIT Thomas'
  end
end
