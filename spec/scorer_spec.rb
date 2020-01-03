require 'shared/teams.rb'
require './lib/scorer.rb'
require 'pry'

RSpec.describe "Scorer" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"
  include_context "players"

  describe 'Calculate scorer' do

    it 'should return a scorer for the number of goals a team has scored' do
      expect(Scorer.new.call(team_man_united.players).class).to eq(Player)
    end

  end

  describe 'Calculate scorer likelihood' do

    it 'should calculate a more likely scorer ' do
      players = [less_likely_scorer, more_likely_scorer]
      scorers = []
      50.times do
        scorers.push(Scorer.new.call(players))
      end
      expect(scorers.count(more_likely_scorer)).to be > scorers.count(less_likely_scorer)
    end

  end
end
