class Player

START_POINTS = 100
PUNCH = 10

  attr_reader :punch, :health, :name

  def initialize(name, punch = PUNCH, health = START_POINTS)
    @name = name
    @health = health
    @punch = punch
  end

  def receive_damage
     @health -= punch
  end

end
