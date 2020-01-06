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
      @points_allocater = PointsAllocater.new(@score_object, team_man_united, team_liverpool)
    end
      it 'should have 2 teams ' do
        @points_allocater.allocate
        expect(@points_allocater.points[team_man_united]).to eq(0)
        expect(@points_allocater.points[team_liverpool]).to eq(3)
      end

  end

end
