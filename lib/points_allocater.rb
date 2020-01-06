require './lib/fixture.rb'

class PointsAllocater

  attr_reader :points

  def initialize(score_object, home_team, away_team)
    @score_object = score_object
    @home_team = home_team
    @away_team = away_team
    @points = {home_team => 1, away_team => 1}

  end

  def allocate
    if @score_object.values.uniq.length == 2
      home_team_points = @score_object.key(max_score) == @home_team ? 3 : 0
      away_team_points = @score_object.key(max_score) == @away_team ? 3 : 0
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
