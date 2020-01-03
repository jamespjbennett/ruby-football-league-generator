class Scorer

  def call(players)
    calculate_scorer(players)
  end

  def calculate_scorer(players)
    players.sample
  end
end
