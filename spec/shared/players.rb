require './lib/player.rb'
require 'rspec'

RSpec.shared_context "players" do

  let(:keeper){
    Position.new("Goalkeeper")
  }
  let(:defender){
    Position.new("Defender")
  }
  let(:midfielder){
    Position.new("Midfielder")
  }
  let(:striker){
    Position.new("Striker")
  }

  let(:example_player){
    Player.new("Test", striker, 87, 80, 50)
  }

  let(:less_likely_scorer){
    Player.new("Test", defender, 50, 0, 0)
  }

  let(:more_likely_scorer){
    Player.new("Test", striker, 98, 0, 0)
  }

  let(:man_united) {
    [Player.new("Rashford", striker, 84, 82, 50),
    Player.new("De Gea", keeper, 40, 15, 93),
    Player.new("Wan Bissaka", defender, 57, 60, 89),
    Player.new("Maguire", defender, 57, 50, 87),
    Player.new("Lindelof", defender, 50, 47, 82),
    Player.new("Shaw", defender, 55, 65, 80),
    Player.new("Mctominay", midfielder, 65, 70, 73),
    Player.new("Fred", midfielder, 55, 65, 68),
    Player.new("Martial", striker, 85, 82,  45),
    Player.new("James", striker, 78, 85,  52),
    Player.new("Pogba", midfielder, 80, 90, 50)]
  }

  let(:liverpool) {
    [Player.new("Allison", keeper, 40, 20, 93),
    Player.new("Alexander Arnold", defender, 70, 80, 80),
    Player.new("Van Dijk", defender, 69, 55, 94),
    Player.new("Matip", defender, 60, 45, 84),
    Player.new("Robertson", defender, 65,79, 82),
    Player.new("Fabinho", midfielder, 66, 75, 72),
    Player.new("Wijnaldum", midfielder, 73, 75, 76),
    Player.new("Henderson", midfielder, 69, 75, 72),
    Player.new("Mane", striker, 91, 85,  50),
    Player.new("Firmino", midfielder, 85, 90,  56),
    Player.new("Salah", midfielder, 92, 85,  45)]
  }

  let(:watford) {
    [Player.new("Foster", keeper, 40, 20, 1),
    Player.new("Mariappa", defender, 50, 55, 65),
    Player.new("Kabasele", defender, 55, 45, 72),
    Player.new("Cathcart", defender, 55, 45, 70),
    Player.new("Femenia", defender, 50, 45, 71),
    Player.new("Capoue", midfielder, 68, 65, 60),
    Player.new("Hughes", midfielder, 70, 74, 55),
    Player.new("Sarr", midfielder, 72, 75,45),
    Player.new("Doucore", midfielder, 70, 74, 55),
    Player.new("Deulofeu", midfielder, 73, 79, 40),
    Player.new("Deeney", midfielder, 78, 67, 45)]
  }
end
