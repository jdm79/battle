require 'game'

describe Game do
  let(:player) {double :player, receive_damage: "No error"}
  describe '#attack' do
    it 'runs receive_damage on a player' do
      expect(subject.attack(player)).to eq "No error"
    end
  end
end
