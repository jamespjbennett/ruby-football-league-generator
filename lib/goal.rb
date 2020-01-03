class Goal
  def initialize(team, scorer = Scorer.new)
    @team = team
    @scorer = scorer.call(team)
  end
end
