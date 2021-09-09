describe 'the home screen', type: :feature do

    it 'checks text appears on screen' do
      visit('/')
      expect(page).to have_content 'Testing infrastructure working!'
    end

end