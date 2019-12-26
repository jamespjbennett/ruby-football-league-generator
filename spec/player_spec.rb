require 'shared/players.rb'

RSpec.describe "Player" do
  # INCLUDE TEST DATA SHEET
  include_context "players"


  describe 'Create Player' do

    it 'should have a name' do
      expect(example_player.name).to eq("Test")
    end
    it 'should have a position' do
      expect(example_player.position.class).to eq(Position)
      expect(example_player.position.name).to eq("Striker")
    end
    it 'should have an attack rating' do
      expect(example_player.scoring).to eq(87)
    end
    it 'should have an defence rating' do
      expect(example_player.defence).to eq(50)
    end

  end
end
