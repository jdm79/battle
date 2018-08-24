require 'game'

describe Game do
  let(:game) {described_class.new(player, player)} 
  let(:player) {double :player, receive_damage: "No error"}

  describe '#initialize' do
    it 'initialises with two players' do
      expect(game.p1).to eq player
      expect(game.p2).to eq player
    end
  end

  describe '#attack' do
    it 'runs receive_damage on a player' do
      expect(game.attack(player)).to eq "No error"
    end
  end
end