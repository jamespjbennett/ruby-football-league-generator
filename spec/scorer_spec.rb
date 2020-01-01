require 'shared/teams.rb'
require 'lib/scorer.rb'
require 'pry'

RSpec.describe "Scorer" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"

  describe 'Calculate scorer' do

    it 'should return a scorer for the number of goals a team has scored' do
      expect(Scorer.new(team_man_united).class).to eq(Player)
    end

  end

  describe 'Calculate scorer likelihood' do

    # it 'should calculate a more likely scorer ' do
    #   expect(team_man_united.xg_for.class).to eq(Float)
    # end

  end
end
