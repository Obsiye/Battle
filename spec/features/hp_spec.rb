feature "hp" do
  scenario "view Player 2 hp" do
    sign_in_and_play
    expect(page).to have_content 'Al HP: 60'
  end
end
