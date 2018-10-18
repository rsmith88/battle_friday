require 'player'

describe Player do

  describe 'player.name' do
    it 'returns the players name' do
      player1 = Player.new("Mike")
      expect(player1.name).to eq "Mike"
    end
  end

  describe 'player.health' do
    it 'returns the players health' do
      player1 = Player.new("Mike")
      expect(player1.health).to eq 60
    end
  end

end
