require 'spec_helper'


def sign_in_and_play
  visit("/")
  fill_in :player1, with: "Oleg"
  fill_in :player2, with: "Lewis"
  click_button "Submit"
end

def attack_player_2
  click_button "Attack player 2"
end
