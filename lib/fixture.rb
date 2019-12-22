class Fixture


  attr_accessor :home_team, :away_team, :printed_score

  def initialize(home_team, away_team)
    @home_team = home_team
    @away_team = away_team
    @home_team_goals = 0
    @away_team_goals = 0
    @printed_score = "#{home_team } #{@home_team_goals} - #{away_team} #{@away_team_goals}"
  end

  def play
    @home_team_goals = calculate_goals(home_team, away_team)
    @away_team_goals = calculate_goals(away_team, home_team)
    puts "#{@home_team.name } #{@home_team_goals} - #{@away_team.name} #{@away_team_goals}"
  end

  def calculate_goals(attack_team, defence_team)
    adjusted_xg = (attack_team.xg_for + defence_team.xg_against) / 2
    score_likelihood_per_min = adjusted_xg / 90
    score_array = []
    90.times{score_array.push((score_likelihood_per_min..1+score_likelihood_per_min).step(score_likelihood_per_min).to_a.sample.floor)}
    score_array.sum
  end

end
