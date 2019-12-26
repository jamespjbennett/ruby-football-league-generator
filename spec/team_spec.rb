require 'shared/teams.rb'
require 'pry'
RSpec.describe "Team" do
  # INCLUDE TEST DATA SHEET
  include_context "teams"


  describe 'Create Team' do

    it 'should have a name' do
      expect(team_man_united.players).to_not be_empty
      expect(team_man_united.players.first.class).to eq(Player)
    end

  end

  describe 'Calculate Team Attribute' do

    it 'should calculate max goals for ' do
      expect(team_man_united.xg_for.class).to eq(Float)
    end

    it 'should calculate max goals against ' do
      expect(team_man_united.xg_against.class).to eq(Float)
    end


  end
end
