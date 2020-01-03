# class to calculate number of goals in game for team

class ScoreCalculater

  def initialize(goal_generator = GoalGenerator.new)
    @goal_generator = goal_generator
  end

  def calculate_goals(attack_team, defence_team)
    score_likelihood_per_min = calculate_likelihood_per_minute(attack_team, defence_team)
    total_goals = generate_in_game_score(score_likelihood_per_min)
    @goal_generator.call(attack_team,total_goals)
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


require './lib/goal.rb'

# class to convert number of goals into goal objects

class GoalGenerator

  def call(attack_team,total_goals)
    Array.new(total_goals, Goal.new(attack_team))
  end

end
