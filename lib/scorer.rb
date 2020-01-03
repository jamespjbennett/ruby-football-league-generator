require 'pry'

class Scorer

  def call(players)
    calculate_scorer(players)
  end

  def calculate_scorer(players)
    number_of_players = players.length
    scoring_total = players.sum(&:scoring) - (number_of_players * 40)
    probabilities = players.map { |player| ((player.scoring-40).to_f / scoring_total) }
    probability_per_player_object = players.zip(probabilities).to_h
    probability_per_player_object.max_by { |_, weight| rand ** (1.0 / weight) }.first
  end
end
