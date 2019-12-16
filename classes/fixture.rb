class Fixture


  attr_accessor :home_team, :away_team, :printed_score
  def initialize(home_team, away_team)
    @home_team = home_team
    @away_team = away_team
    @printed_score = "#{home_team }0 - #{away_team} 0"
  end

  def play
    binding.pry
  end

end
