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

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end
end
