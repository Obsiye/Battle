feature "hp" do
  scenario "view Player 2 hp" do
    visit '/'
    fill_in('player_1_name', with: 'Abdi')
    fill_in('player_2_name', with: 'Al')
    click_button 'Submit'
    expect(page).to have_content 'Al HP: 60'
  end
end
