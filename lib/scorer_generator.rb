require 'pry'

class ScorerGenerator

  attr_reader :player

  def initialize(all_possible_players)
    @all_possible_players = all_possible_players
    @player = nil
  end

  def calculate
    probabilities = @all_possible_players.map { |player| ((player.scoring-40).to_f / adjusted_scoring_total) }
    probability_per_player_object = @all_possible_players.zip(probabilities).to_h
    @player = probability_per_player_object.max_by { |_, weight| rand ** (1.0 / weight) }.first
  end

  def number_of_players
    @all_possible_players.length
  end

  def adjusted_scoring_total
    @all_possible_players.sum(&:scoring) - (number_of_players * 40)
  end
end
