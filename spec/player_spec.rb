require 'player'

describe Player do

  describe '#print_name' do
    it 'prints the players own name' do
      player = Player.new('John')
      expect(player.name).to eq 'John'
    end
  end



  describe '#receive_damage' do
    it 'it reduces player HP by 10' do
      player = Player.new('John')
      expect{player.receive_damage}.to change {player.hp}.by(-10)
    end
  end
end
