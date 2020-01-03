class Scorer
  def call(team)
    team.players.sample
  end
end
