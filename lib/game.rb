class Game

  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end

  def attack(player)
    player.receive_attack
    change_turn(player)
  end

  def change_turn(player)
    @current_turn = player
  end

end
