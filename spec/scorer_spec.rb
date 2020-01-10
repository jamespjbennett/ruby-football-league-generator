require 'shared/teams.rb'
require './lib/scorer_generator.rb'
require 'pry'

RSpec.describe "ScorerGenerator" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"
  include_context "players"

  describe 'Calculate scorer' do

    it 'should return a scorer for the number of goals a team has scored' do
      scorer_generator = ScorerGenerator.new(team_man_united.players)
      scorer_generator.calculate
      expect(scorer_generator.player.class).to eq(Player)
    end

  end

  describe 'Calculate scorer likelihood' do

    it 'should calculate a more likely scorer ' do
      players = [less_likely_scorer, more_likely_scorer]
      scorers = []
      50.times do
        scorer_generator = ScorerGenerator.new(players)
        scorer_generator.calculate
        scorers.push(scorer_generator.player)
      end
      expect(scorers.count(more_likely_scorer)).to be > scorers.count(less_likely_scorer)
    end

  end
end
