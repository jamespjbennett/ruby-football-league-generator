require 'shared/teams.rb'
require './lib/points_allocater.rb'
require './lib/goal.rb'


RSpec.describe "Points Allocater" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"

  describe 'Allocating correct amount of points' do
    before(:each) do
      @score_object = {
        team_man_united => 1,
        team_liverpool => 2
      }
      @points_allocater = PointsAllocater.new(@score_object)
      @liverpool_points = 0
    end

    it 'should have allocate 3 points for winning team ' do
      @points_allocater.perform
      expect(team_liverpool.points).to eq(@liverpool_points + 3)
    end

  end

end
