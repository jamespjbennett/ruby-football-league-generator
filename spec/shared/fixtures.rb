require './lib/fixture.rb'
require './lib/score_calculater.rb'
require './spec/shared/teams.rb'
require 'pry'


RSpec.shared_context "fixtures" do

  include_context "teams"

  let(:manu_liverpool){
    Fixture.new(team_man_united,  team_liverpool, ScoreFormatter.new(team_man_united, team_liverpool))
  }

  let(:watford_liverpool){
    Fixture.new(team_watford,  team_liverpool, ScoreFormatter.new(team_man_united, team_liverpool))
  }

end
