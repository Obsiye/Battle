describe Game do
  let(:player1) { double(:player, :reduce_hp => true, :hp => 60) }
  let(:player2) { double(:player, :reduce_hp => true, :hp => 60) }
  let(:subject) { Game.new(player1, player2) }

  context "#initialize" do
    it "is expected to store the players it is given" do
      expect(subject.players).to include player1, player2
    end
  end

  context "#attack" do
    it "reduces the player's HP" do
      expect(player2).to receive :reduce_hp
      subject.attack(player2)
    end
  end

  context "#game_over?" do
    it 'should return false if players HP is more than 0' do
      expect(subject.game_over?).to eq false
    end
  end
end
