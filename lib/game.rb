class Game

  def attack(opponent, damage = 10)
    opponent.receive_damage(damage)
  end

end
