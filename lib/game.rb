class Game

attr_reader :player1, :player2, :p2_turn, :p1_turn

  def self.instance
    @@game
  end

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @p1_turn = true
    @p2_turn = false
    @@game = self
  end

  def attack(player)
   player.receive_damage
  end

  def switch
    if @p1_turn
      attack(player2)
      @p1_turn = false
      @p2_turn = true
    else
      attack(player1)
      @p1_turn = true
      @p2_turn = false
    end
  end




end
