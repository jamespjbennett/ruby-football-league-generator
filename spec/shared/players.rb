require './classes/player.rb'


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
    [Player.new("Rashford", striker, 87, 50),
    Player.new("De Gea", keeper, 0, 93),
    Player.new("Wan Bissaka", defender, 57, 89),
    Player.new("Maguire", defender, 57, 87),
    Player.new("Lindelof", defender, 50, 82),
    Player.new("Shaw", defender, 55, 80),
    Player.new("Mctominay", midfielder, 75, 75),
    Player.new("Fred", midfielder, 72, 71),
    Player.new("Martial", striker, 85, 45),
    Player.new("James", midfielder, 80, 52),
    Player.new("Pogba", midfielder, 83, 50)]
  }
end
