describe 'the home screen', type: :feature do

    it 'checks names appear on screen from a form submit' do
      visit('/')
      fill_in('player_one', with: 'Ed')
      fill_in('player_two', with: 'Billy')
      click_button('Play')
      expect(page).to have_content 'Player One: Ed, Player Two: Billy'
    end

end