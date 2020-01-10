class ScoreFormatter

  def initialize(home_team, away_team)
    @home_team = home_team
    @away_team = away_team
  end

end

class ScoreString < ScoreFormatter
  def call(home_team_goals, away_team_goals)
     p team_goal_string(home_team_goals,@home_team) + " - " + team_goal_string(away_team_goals,@away_team)
  end

  def team_goal_string(team_goals, team)
    goal_string = "#{team.name} #{team_goals.length} "
    goal_string += "( #{team_goals.map{|goal| goal.scorer.name }.join(", ")} ) "
  end
end

#
class ScoreObject < ScoreFormatter
  def call(home_team_goals, away_team_goals)
    {
      @home_team => home_team_goals.length,
      @away_team => away_team_goals.length
    }
  end
end
