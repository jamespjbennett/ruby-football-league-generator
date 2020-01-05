require 'shared/teams.rb'
require './lib/goal.rb'


RSpec.describe "Goal" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"

  describe 'Create Goal Object' do

    it 'should initialize with a team' do
      expect(Goal.new(team_man_united).team).to eq(team_man_united)
    end

  end

end
