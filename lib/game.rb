class Game

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
