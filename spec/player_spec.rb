require 'player'

RSpec.describe Player do
  subject(:zoe) { Player.new('Zoe') }
  subject(:thomas) { Player.new('Thomas') }

  describe '#name' do
    it 'returns the name' do
      expect(zoe.name).to eq 'Zoe'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(zoe.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { zoe.receive_damage }.to change { zoe.hit_points }.by(-10)
    end
  end

end
