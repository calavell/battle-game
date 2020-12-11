require_relative './player.rb'

class Game

  attr_accessor :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
  end

  def attack
    @player_2.receive_damage
  end

end
