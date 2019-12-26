require 'shared/fixtures.rb'

RSpec.describe "Player" do
  # INCLUDE TEST DATA SHEET
  include_context "fixtures"


  describe 'correct probability' do
    it 'should be more likely for a higher skilled team to beat a lower skilled team' do
      total_home_score = 0
      total_away_score = 0
      20.times do
        fixture = Fixture.new(team_watford,  team_liverpool)
        fixture.play
        total_home_score += fixture.home_team_goals
        total_away_score += fixture.away_team_goals
      end
      expect(total_away_score).to be > total_home_score
    end
  end


end
