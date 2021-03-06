require './lib/score_calculater.rb'
require './lib/score_formatter.rb'

class Fixture

  attr_reader :home_team, :away_team, :home_team_goals, :away_team_goals

  def initialize(home_team, away_team,score_calculater = ScoreCalculater.new)
    @home_team = home_team
    @away_team = away_team
    @score_calculater = score_calculater
    @home_team_goals = nil
    @away_team_goals = nil
  end

  def play
    @home_team_goals = @score_calculater.calculate_goals(@home_team, @away_team)
    @away_team_goals = @score_calculater.calculate_goals(@away_team, @home_team)
  end

  def display_result(score_formatter)
    score_formatter.call(@home_team_goals, @away_team_goals)
  end

end
