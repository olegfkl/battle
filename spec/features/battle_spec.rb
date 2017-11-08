require 'spec_helper'

feature "Play name form" do
  scenario "submit names and see them on following screen" do
    visit("/")
    fill_in :player1, with: "Oleg"
    fill_in :player2, with: "Lewis"
    click_button "Submit"
    expect(page).to have_content "Oleg Lewis"
  end
end

feature "Hit points" do
  scenario "When we start a game" do
    visit("/")
    fill_in :player1, with: "Oleg"
    fill_in :player2, with: "Lewis"
    click_button "Submit"
    expect(page).to have_content "Oleg: 100HP"
  end
end
