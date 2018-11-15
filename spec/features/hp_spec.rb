feature "hp" do
  let(:default_hp) { Player::DEFAULT_HP }

  scenario "View player 1 hp" do
    sign_in_and_play
    expect(page).to have_content "Abdi HP: #{default_hp}"
  end

  scenario "view Player 2 hp" do
    sign_in_and_play
    expect(page).to have_content "Al HP: #{default_hp}"
  end

  scenario "Player loses game" do
    sign_in_and_play
    10.times do
      attack_and_confirm
    end
    click_button("Attack")
    expect(page).to have_content("Al loses game!")
  end
end
