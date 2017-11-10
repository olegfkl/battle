class Game

attr_reader :player1, :player2

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
  end

  def attack(player)
   player.receive_damage
  end


end
