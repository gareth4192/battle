require 'player'

describe Player do
  subject(:player) { described_class.new('gareth') }

  it 'should return its name' do
    expect(player.name).to eq 'gareth'
  end
end
