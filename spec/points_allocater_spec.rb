require 'shared/teams.rb'
require 'shared/points_allocaters.rb'
require './lib/points_allocater.rb'
require './lib/goal.rb'


RSpec.describe "Points Allocater" do
  # INCLUDE TEST DATA SHEET
  include_context "points_allocaters"
  include_context "teams"

  describe 'Allocating correct amount of points' do

    it 'should allocate 3 points for winning team ' do
      liverpool_points = team_liverpool.points
      single_win_points_allocater.perform
      expect(team_liverpool.points).to eq(liverpool_points + 3)
    end

    it 'should allocate 1 point each for a draw' do
      liverpool_points = team_liverpool.points
      man_united_points = team_man_united.points
      single_draw_points_allocater.perform
      expect(team_liverpool.points).to eq(liverpool_points + 1)
      expect(team_man_united.points).to eq(man_united_points + 1)
    end

  end

end
