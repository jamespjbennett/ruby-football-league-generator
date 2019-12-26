require 'shared/fixtures.rb'
require 'shared/score_calculaters.rb'

RSpec.describe "Player" do
  # INCLUDE TEST DATA SHEET
  include_context "fixtures"
  include_context "score_calculaters"

  describe 'calculation probability figures' do

    it 'should generate a float for score per minute' do
      expect(score_likelihood_per_min.class).to eq(Float)
      expect(score_likelihood_per_min).to be < 1
    end

    it 'should generate a score within 90 minutes based on the likelihood per minute probability' do
      expect(score.class).to eq(Integer)
    end

  end

  describe 'correct probability' do
    it 'should be more likely for a higher skilled team to beat a lower skilled team' do
      watford_goals = 0
      liv_goals = 0
      20.times do
        score_calculater = ScoreCalculater.new
        watford_fixture_goals = score_calculater.calculate_goals(team_watford, team_liverpool)
        liv_fixture_goals = score_calculater.calculate_goals(team_liverpool, team_watford)
        watford_goals += watford_fixture_goals
        liv_goals += liv_fixture_goals
      end
      expect(liv_goals).to be > watford_goals
    end
  end


end
