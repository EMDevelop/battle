require 'game'
describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }

  context 'SRP - I want my attack to reduce Player 2s HP' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end
end