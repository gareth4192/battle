feature 'Action' do
  scenario 'Confirm attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Ding Ding!'
  end
end
