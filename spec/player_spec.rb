require 'player'

describe Player do
  subject(:player) { described_class.new }

  it 'should return its name' do
    expect(player.name).to eq @name
  end
end
