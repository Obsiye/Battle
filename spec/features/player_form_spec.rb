feature "homepage" do
  scenario "submit player form" do
    visit '/'
    fill_in('player_1_name', with: 'Abdi')
    fill_in('player_2_name', with: 'Al')
    click_button 'Submit'
    expect(page).to have_content 'Abdi vs Al'
  end
end
