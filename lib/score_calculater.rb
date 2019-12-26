class ScoreCalculater

  def calculate_goals(attack_team, defence_team)
    score_likelihood_per_min = calculate_likelihood_per_minute(attack_team, defence_team)
    generate_in_game_score(score_likelihood_per_min)
  end

  def calculate_likelihood_per_minute(attack_team, defence_team)
    adjusted_xg = (attack_team.xg_for + defence_team.xg_against) / 2
    adjusted_xg / 90
  end

  def generate_in_game_score(score_likelihood_per_min)
    score_array = []
    90.times{score_array.push((score_likelihood_per_min..1+score_likelihood_per_min).step(score_likelihood_per_min).to_a.sample.floor)}
    score_array.sum
  end

end
