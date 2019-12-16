require './classes/fixture.rb'
require './spec/shared/teams.rb'



RSpec.shared_context "fixtures" do

  include_context "teams"

  let(:manu_liverpool){
    Fixture.new(team_man_united,  team_liverpool)
  }



end
