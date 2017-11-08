require 'spec_helper'

feature '#home page' do
  scenario 'Testing infrastructure working!' do
    visit('/')
    save_and_open_page
    expect(page).to have_content("Testing infrastructure working!")
  end
end
