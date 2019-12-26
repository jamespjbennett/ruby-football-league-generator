class Team

  attr_accessor :max_goals_for, :max_goals_against, :attack_total, :defence_total, :players, :name

  def initialize(name, players)
    @name = name
    @players = players
    @xg_for = xg_for
    @xg_against = xg_against
  end

  def attack_total
    @players.sum(&:scoring)
  end

  def creative_total
    @players.sum(&:creating)
  end

  def defence_total
    total_attack = @players.sum(&:defence)
  end

  def xg_for
    ((attack_total + creative_total) - 1129).to_f / 156
  end

  def xg_against
    adjusted_defence = 1100 - defence_total
    (adjusted_defence - 132).to_f / 200
  end
end
