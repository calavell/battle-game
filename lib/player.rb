class Player

  attr_accessor :name, :hp
  HP = 100

  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def print_name
    @name
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= 10
  end

end
