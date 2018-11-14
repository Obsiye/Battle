feature "hp" do
  let(:default_hp) { Player::DEFAULT_HP }

  scenario "view Player 2 hp" do
    sign_in_and_play
    expect(page).to have_content "Al HP: #{default_hp}"
  end
end
