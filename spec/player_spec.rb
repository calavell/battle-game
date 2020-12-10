require 'player'

describe Player do

  describe '#print_name' do
    it 'prints the players own name' do
      player = Player.new('John')
      expect(player.print_name).to eq 'John'
    end
  end
end