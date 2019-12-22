class Team

  attr_accessor :max_goals_for, :max_goals_against, :attack_total, :defence_total, :players, :name

  def initialize(name, players)
    @name = name
    @players = players
    @attack_total = attack_total
    @defence_total = defence_total
    @xg_for = xg_for
    @xg_against = xg_against
  end

  def attack_total
    total_attack = @players.sum(&:attack)
  end

  def defence_total
    total_attack = @players.sum(&:defence)
  end

  def xg_for
    attack_total / 324.3589
  end

  def xg_against
    defence_total / 1388.84
  end
end
