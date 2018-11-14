class Player
  attr_reader :name, :hp
  DEFAULT_HP = 60
  DEFAULT_DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(player)
    player.reduce_hp
  end

  def reduce_hp
    @hp -= DEFAULT_DAMAGE
  end
end
