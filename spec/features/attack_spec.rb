feature "battle" do
  let(:default_hp) { Player::DEFAULT_HP }
  let(:default_damage) { Player::DEFAULT_DAMAGE }

  scenario "attacking Player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Abdi attacks Al"
  end

  scenario "reduce Player 2 HP" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    new_hp = default_hp - default_damage
    expect(page).to have_content "Al HP: #{new_hp}"
  end
end
