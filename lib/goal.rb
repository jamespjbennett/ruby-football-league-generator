require './lib/scorer.rb'

class Goal

  attr_accessor :team, :scorer

  def initialize(team, scorer = Scorer.new)
    @team = team
    @scorer = scorer.call(team.players)
  end
end
