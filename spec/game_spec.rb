require 'game'

describe Game do

  let (:obj2) { double(:obj2, receive_damage: true) }
  let (:obj1) { double(:obj1, receive_damage: true) }
  subject(:game) { described_class.new(obj1,obj2) }

  context '#attack' do
    it "" do
      # allow(player).to receive(:receive_damage).return true
      expect(game.attack(obj1)).to eq true
    end
  end

  describe '#switch' do
    context 'when it is player1s turn' do
      it 'attacks player2' do
        expect(obj2).to receive(:receive_damage)
        game.switch
      end

      it 'switches to player2s turn' do
        expect { game.switch }.to change { game.p2_turn }.to be(true)
      end
    end
  end
end
