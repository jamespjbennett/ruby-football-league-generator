require 'shared/teams.rb'
require './lib/goal.rb'
require './lib/fixture.rb'


RSpec.describe "ScoreFormatter" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"

  describe 'Format score correctly' do
    before(:each) do
      @goal_manu = Goal.new(team_man_united)
      @goal_liverpool = Goal.new(team_liverpool)
    end

    it 'should initialize with a team' do
      expect(@goal.team).to eq(team_man_united)
    end

    # it 'should intitalize with a calculated player' do
    #   expect(@goal.scorer.class).to eq(Player)
    # end

  end

end
