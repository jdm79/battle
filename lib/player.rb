class Player
DEFAULT_HITPOINTS = 60

attr_reader :name, :hitpoints

  def initialize(name, hitpoints = DEFAULT_HITPOINTS) 
    @name = name
    @hitpoints = hitpoints
  end

  def attack(opponent, damage = 10)
    opponent.receive_damage(damage)
  end

  def receive_damage(damage = 10)
    @hitpoints -= damage
  end  
end
