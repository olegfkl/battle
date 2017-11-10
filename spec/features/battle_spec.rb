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

feature "Get confirmation attacked player 2 on the following screen" do
  scenario "Attack player 2 by pressing attack button" do
    sign_in_and_play
    attack
    expect(page).to have_content "Oleg attacked Lewis"
  end
end

feature "A player 1 attacks player 2" do
    scenario "Reduce player 2 points after punch" do
      sign_in_and_play
      attack
      expect(page).to have_content "Lewis: 90HP"
    end
  end
