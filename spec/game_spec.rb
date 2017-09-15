require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#hit' do
    it 'damages the player' do
      expect(player_1).to receive(:receive_damage)
      game.hit(player_1)
    end
  end
end
