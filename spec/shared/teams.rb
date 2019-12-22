require './lib/player.rb'
require './lib/team.rb'
require './spec/shared/players.rb'



RSpec.shared_context "teams" do

  include_context "players"
  
  let(:team_man_united){
    Team.new("Man United", man_united)
  }

  let(:team_liverpool){
    Team.new("Liverpool", liverpool)
  }


end
