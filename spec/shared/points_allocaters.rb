require './lib/points_allocater.rb'
require './spec/shared/teams.rb'



RSpec.shared_context "points_allocaters" do

  include_context "teams"

  let(:single_win_score_object){
    {
      team_man_united => 1,
      team_liverpool => 2
    }
  }

  let(:single_draw_score_object){
    {
      team_man_united => 1,
      team_liverpool => 1
    }
  }

  let(:single_draw_points_allocater){
    PointsAllocater.new(single_draw_score_object)
  }

  let(:single_win_points_allocater){
    PointsAllocater.new(single_win_score_object)
  }



end
