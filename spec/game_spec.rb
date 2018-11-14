describe Game do
  let(:player) { double(:player, :reduce_hp => true) }
  context "#attack" do
    it "reduces the player's HP" do
      expect(player).to receive :reduce_hp
      subject.attack(player)
    end
  end
end
