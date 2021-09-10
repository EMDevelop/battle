def submit_name_form
  visit('/')
    fill_in('player_one', with: 'Ed')
    fill_in('player_two', with: 'Billy')
    click_button('Play')
end