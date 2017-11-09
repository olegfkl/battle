require 'spec_helper'
web = WebHelpers.new
feature "Play name form" do
  scenario "submit names and see them on following screen" do
    web.sign_in_and_play
    expect(page).to have_content "Oleg Lewis"
  end
end

feature "Hit points" do
  scenario "When we start a game" do
    web.sign_in_and_play
    expect(page).to have_content "Oleg: 100HP"
  end
end
