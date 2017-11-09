# require 'spec_helper'

feature "Play name form" do
  scenario "submit names and see them on following screen" do
  sign_in_and_play
    expect(page).to have_content "Oleg Lewis"
  end
end

feature "Hit points" do
  scenario "When we start a game" do
  sign_in_and_play
    expect(page).to have_content "Lewis: 100HP"
  end
end
