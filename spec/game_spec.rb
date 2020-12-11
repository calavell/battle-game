require 'game'

describe Game do
  let(:game) { described_class.new("Cathal", "Zeen") }
  it 'is initializes with 2 players' do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  describe '#attack' do
    it 'calls recieve_damage method on player' do
      expect{ game.attack }.to change { game.player_2.hp}.by(-10)
    end
  end
end
