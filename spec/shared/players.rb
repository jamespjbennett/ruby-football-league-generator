require './lib/player.rb'


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
    Player.new("Test", striker, 87, 50)
  }

  let(:man_united) {
    [Player.new("Rashford", striker, 84, 50),
    Player.new("De Gea", keeper, 0, 93),
    Player.new("Wan Bissaka", defender, 57, 89),
    Player.new("Maguire", defender, 57, 87),
    Player.new("Lindelof", defender, 50, 82),
    Player.new("Shaw", defender, 55, 80),
    Player.new("Mctominay", midfielder, 65, 70),
    Player.new("Fred", midfielder, 58, 68),
    Player.new("Martial", striker, 85, 45),
    Player.new("James", striker, 78, 52),
    Player.new("Pogba", midfielder, 80, 50)]
  }

  let(:liverpool) {
    [Player.new("Allison", keeper, 0, 93),
    Player.new("Alexander Arnold", defender, 75, 80),
    Player.new("Van Dijk", defender, 69, 94),
    Player.new("Matip", defender, 60, 84),
    Player.new("Robertson", defender, 73, 82),
    Player.new("Fabinho", midfielder, 70, 72),
    Player.new("Wijnaldum", midfielder, 69, 76),
    Player.new("Henderson", midfielder, 72, 72),
    Player.new("Mane", striker, 91, 50),
    Player.new("Firmino", midfielder, 88, 56),
    Player.new("Salah", midfielder, 92, 45)]
  }
end
