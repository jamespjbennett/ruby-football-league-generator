require 'shared/fixtures.rb'

RSpec.describe "Fixture" do
  # INCLUDE TEST DATA SHEET
  include_context "fixtures"


  describe 'Create Fixture' do

    it 'should have a home and away team' do
      expect(manu_liverpool.home_team).to_not be_nil
      expect(manu_liverpool.away_team).to_not be_nil
    end

    it 'should calculate a score' do
      watford_liverpool.play
      expect(watford_liverpool.home_team_goals).to_not be_nil
      expect(watford_liverpool.away_team_goals).to_not be_nil
    end
  end
end
