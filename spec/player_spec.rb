require 'player'

describe Player do

  let (:obj) { double("Name") }
  subject(:player) { described_class.new(obj) }

  context '#receive_damage' do
    it "reduce player's health after receiving damage" do
      expect { player.receive_damage }.to change { player.health}.by(-Player::PUNCH)
    end
  end
end
