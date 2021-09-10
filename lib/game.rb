class Game

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
  end

  def player_one
    @players[0]
  end

  def player_two
    @players[1]
  end

  def attack(player)
    player.receive_damage
  end

end