require 'shared/teams.rb'
require './lib/goal.rb'
require './lib/fixture.rb'


RSpec.describe "ScoreFormatter" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"

  describe 'Format score correctly' do
    before(:each) do
      @manu_goals = [Goal.new(team_man_united), Goal.new(team_man_united)]
      @liv_goals = [Goal.new(team_liverpool)]
      score_formatter = ScoreFormatter.new(team_man_united, team_liverpool)
      @formatted_score = score_formatter.call(@manu_goals, @liv_goals)
    end

    it 'should display the number of goals for each team' do
      expect(@formatted_score).to include('1')
      expect(@formatted_score).to include('2')
    end

    it 'should include all scorer names' do
      expect(@formatted_score).to include(@manu_goals[0].scorer.name)
      expect(@formatted_score).to include(@manu_goals[1].scorer.name)
      expect(@formatted_score).to include(@liv_goals[0].scorer.name)
    end

  end

end
