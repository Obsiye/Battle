describe Player do
  let(:player) { Player.new('Abdi') }

  it "returns the player's name" do
    expect(player.name).to eq 'Abdi'
  end
end
