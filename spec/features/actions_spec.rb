feature 'Action' do
  scenario 'Confirm attack' do
    sign_in_and_play
    click_link 'attack'
    expect(page).to have_content 'Attacked'
  end
end
