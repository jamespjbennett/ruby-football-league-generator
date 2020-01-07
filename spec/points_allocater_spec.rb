require 'shared/teams.rb'
require './lib/points_allocater.rb'
require './lib/goal.rb'


RSpec.describe "Points Allocater" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"

  describe 'Points allocater initizliation' do
    before(:each) do
      @score_object = {
        team_man_united => 1,
        team_liverpool => 2
      }
      @manu_goals = [Goal.new(team_man_united)]
      @liv_goals = [Goal.new(team_liverpool), Goal.new(team_liverpool)]
      @points_allocater = PointsAllocater.new(team_man_united, team_liverpool)
    end

    it 'should have allocate correct pointw for each team ' do
      @points_allocater.allocate(@manu_goals, @liv_goals )
      expect(@points_allocater.points[team_man_united]).to eq(0)
      expect(@points_allocater.points[team_liverpool]).to eq(3)
    end

  end

end
