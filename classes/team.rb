class Team

  attr_accessor :max_goals_for, :max_goals_against, :attack_total, :defence_total, :players

  def initialize(name, players)
    @name = name
    @players = players
    @max_goals_for = max_goals_for
    @max_goals_against = max_goals_against
  end

  def max_goals_for
    (attack_total.to_f / 10).round
  end

  def max_goals_against
    10 - (defence_total / 10)
  end

  def attack_total
    total_attack = @players.sum(&:attack) / @players.length
  end

  def defence_total
    total_attack = @players.sum(&:defence) / @players.length
  end
end
