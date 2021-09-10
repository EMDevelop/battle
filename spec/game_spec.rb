require 'game'
describe Game do

  let(:player_one) { double :player }
  let(:player_two) { double :player }
  let(:game) { Game.new(player_one,player_two)}


  context 'SRP - I want my attack to reduce Player 2s HP' do

    it 'damages the player' do
      expect(player_two).to receive(:receive_damage)
      game.attack(player_two)
    end

    it 'retrieves the first player' do
      expect(game.player_one).to eq player_one
    end

    it 'retrieves the first player' do
      expect(game.player_two).to eq player_two
    end



  end

end