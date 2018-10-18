require 'game'
require 'player'

describe Game do

  describe 'player.attack(player2)' do
    it "depletes player2's health by 10 points" do
      player1 = Player.new("Mike")
      player2 = Player.new("Bob")
      expect(player2).to receive(:receive_attack)
      subject.attack(player2)
    end
  end

end
