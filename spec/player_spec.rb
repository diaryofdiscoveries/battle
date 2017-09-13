require 'player'

RSpec.describe Player do
  subject(:zoe) { Player.new('Zoe')}

  describe '#name' do
    it 'returns the name' do
      expect(zoe.name).to eq 'Zoe'
    end
  end

end
