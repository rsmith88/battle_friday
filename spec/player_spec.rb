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

  describe 'player.attack(player2)' do
    it "depletes player2's health by 10 points" do
      player1 = Player.new("Mike")
      player2 = Player.new("Bob")
      player1.attack(player2)
      expect(player2.health).to eq 50
    end
  end

end
