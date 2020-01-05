require 'shared/teams.rb'
require './lib/goal.rb'


RSpec.describe "Goal" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"

  describe 'Create Goal Object' do
    before(:each) do
      @goal = Goal.new(team_man_united)
    end

    it 'should initialize with a team' do
      expect(@goal.team).to eq(team_man_united)
    end

    it 'should intitalize with a calculated player' do
      expect(@goal.scorer.class).to eq(Player)
    end

  end

end
