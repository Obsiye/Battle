describe Player do
  let(:default_damage) { Player::DEFAULT_DAMAGE }

  let(:player) { Player.new('Abdi') }

  it "returns the player's name" do
    expect(player.name).to eq 'Abdi'
  end

  it "reduces the player's HP" do
    expect { player.reduce_hp }.to change { player.hp }.by -default_damage
  end
end
