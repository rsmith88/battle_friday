class Game

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
    #self.create & self.instance are both class methods, and thus can both access class variable @game.
  end

  attr_reader :player1, :player2, :current_turn, :opponent

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
    @opponent = player2
  end

  def attack(player)
    player.receive_attack
    change_turn(player)
  end

  def change_turn(player)
    @opponent = @current_turn
    @current_turn = player
  end

end
