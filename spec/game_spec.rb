require 'game'
require 'player'

describe Game do

  describe 'game initialize' do
    it 'initializes with 2 players' do
      game = Game.new("Mike", "Bob")
      expect(game.player1).to eq "Mike"
      expect(game.player2).to eq "Bob"
    end
    it 'sets current_turn to player1' do
      game = Game.new("Mike", "Bob")
      expect(game.current_turn).to eq "Mike"
    end
  end

  describe 'attack(player)' do
    it "allows the player to recieve attack" do
      player1 = Player.new("Mike")
      player2 = Player.new("Bob")
      game = Game.new(player1, player2)
      expect(game.player2).to receive(:receive_attack)
      game.attack(game.player2)
    end
  end

  describe 'change_turn' do
    it'changes the turn from player1 to player2' do
      player1 = Player.new("Mike")
      player2 = Player.new("Bob")
      game = Game.new(player1, player2)
      expect(game.player2).to receive(:receive_attack)
      game.attack(game.player2)
      expect(game.current_turn).to eq player2
    end
  end

end
