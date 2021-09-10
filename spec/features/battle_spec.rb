describe 'the home screen', type: :feature do

  before do
    submit_name_form
  end

  context 'We want to Start a fight by entering our names and seeing them' do
    
    it 'checks names appear on screen from a form submit' do
      expect(page).to have_content 'Ed vs Billy'
    end

  end

  context 'We want to Start a fight by entering our names and seeing them' do
    
    it 'shows player 1 hitpoints' do
      expect(page).to have_content 'Ed: 60/60 HP'
    end

    it 'shows player 2 hitpoints' do
      expect(page).to have_content 'Billy: 60/60 HP'
    end

  end

end