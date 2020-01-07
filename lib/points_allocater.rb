require './lib/fixture.rb'

class PointsAllocater

  def initialize(score_object)
    @score_object = score_object
  end

  def perform
    if @score_object.values.uniq.length == 1
      allocate_draw
    else
      allocate_win
    end
  end

  def allocate_win
    @score_object.key(max_goals).increment_points(3)
  end

  def max_goals
    @score_object.values.max
  end

  def allocate_draw
    @score_object.keys.each{|team| team.increment_points(1)}
  end
end
