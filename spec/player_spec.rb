require 'player'

describe Player do

  describe '#print_name' do
    it 'prints the players own name' do
      player = Player.new('John')
      expect(player.name).to eq 'John'
    end
  end

  describe '#attack' do
    player_1 = Player.new('Cathal')
    player_2 = Player.new('Sarah')
    it 'calls recieve_damage method on player' do
      expect(player_1).to receive(:receive_damage)
      player_2.attack(player_1)
    end 
  end


  describe '#receive_damage' do
    it 'it reduces player HP by 10' do
      player = Player.new('John')
      expect{player.receive_damage}.to change {player.hp}.by(-10)
    end
  end
end
