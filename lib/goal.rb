require './lib/scorer_generator.rb'

class Goal

  attr_accessor :team, :scorer

  def initialize(team, scorer_generator = ScorerGenerator.new(team.players))
    @team = team
    @scorer_generator = scorer_generator
    @scorer = apply_scorer
  end

  def apply_scorer
    @scorer_generator.calculate
    @scorer_generator.player
  end
end
