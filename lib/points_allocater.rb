require './lib/fixture.rb'

class PointsAllocater

  attr_reader :points

  def initialize(home_team, away_team)
    @home_team = home_team
    @away_team = away_team
    @points = {home_team => 1, away_team => 1}

  end

  def allocate(home_team_goals, away_team_goals)
    home_team_total_goals = home_team_goals.length
    away_team_total_goals = away_team_goals.length
    if home_team_total_goals !=  away_team_total_goals
      home_team_points = home_team_total_goals > away_team_total_goals ? 3 : 0
      away_team_points = away_team_total_goals > home_team_total_goals ? 3 : 0
      @points[@home_team] = home_team_points
      @points[@away_team] = away_team_points
    end
  end

  def max_score
    @score_object.values.max
  end

  def min_score
    @score_object.values.min
  end
end
