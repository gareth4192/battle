feature 'Hit points' do
  scenario 'player 2s hit points' do
      sign_in_and_play
      expect(page).to have_content 'Mittens HP:'
  end
end
