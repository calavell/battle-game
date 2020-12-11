require_relative './player.rb'

class Game

  attr_accessor :player_1, :player_2, :counter

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @counter = 0
  end

  def attack(player)
    player.receive_damage
    @counter += 1
  end

  # def player_1_turn?
  #   @counter.even? = @player_1
  #   @counter.odd? = @player_2
  # end



end
