def sign_in_and_play
  visit '/'
  fill_in('player_1_name', with: 'Abdi')
  fill_in('player_2_name', with: 'Al')
  click_button 'Submit'
end
