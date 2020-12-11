require 'game'

describe Game do
  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  it 'is initializes with 2 players' do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  describe '#attack' do
    it 'calls recieve_damage method on player' do
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2.name).to eq player_2
    end
  end
end
