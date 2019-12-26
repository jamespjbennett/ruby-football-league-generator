require './lib/score_calculater.rb'
require './spec/shared/teams.rb'



RSpec.shared_context "score_calculaters" do

  include_context "teams"

  let(:score_calculater){
    ScoreCalculater.new
  }

  let(:score_likelihood_per_min){
    score_calculater.calculate_likelihood_per_minute(team_watford, team_liverpool)
  }

  let(:score){
    score_calculater.generate_in_game_score(score_likelihood_per_min)
  }


end
