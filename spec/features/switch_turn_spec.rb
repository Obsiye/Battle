feature "turn alternates between the players" do
  scenario "it is Player 1's turn at the start of the game" do
    sign_in_and_play
    expect(page).to have_content "Abdi's turn"
  end

  scenario "after Player 1 attacks the turn passes to Player 2" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content "Al's turn"
  end
end
