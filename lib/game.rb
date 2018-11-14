class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def attack(player)
    player.reduce_hp
  end

  def switch_turn
    @players.rotate!
  end
end
