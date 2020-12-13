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
    increase_turn
  end

  def current_turn
    counter.even? ? @player_1.name : @player_2.name
  end

  private

  def increase_turn
    @counter += 1
  end

end
