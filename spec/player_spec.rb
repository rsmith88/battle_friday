require 'player'

describe Player do

  describe 'player.name' do
    it 'returns the players name' do
      player1 = Player.new("Mike")
      expect(player1.name).to eq "Mike"
    end
  end

end
