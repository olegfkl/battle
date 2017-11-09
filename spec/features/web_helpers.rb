require 'spec_helper'

class WebHelpers
def sign_in_and_play
  visit("/")
  fill_in :player1, with: "Oleg"
  fill_in :player2, with: "Lewis"
  click_button "Submit"
end
end
