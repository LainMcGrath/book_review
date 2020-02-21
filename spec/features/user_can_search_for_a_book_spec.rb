require 'rails_helper'

RSpec.describe 'User can search for a book' do
  it "and can see book details" do
    visit root_path
    fill_in :title, with: 'the man who saw everything'
    click_on('Find Book')
    expect(current_path).to eq('/search')

    expect(page).to have_css('.title')
    expect(page).to have_content('Title: The Man Who Saw Everything')
    expect(page).to have_css('.author')
    expect(page).to have_content('.genres')

    expect(page).to have_css('.reviews', count: 2)
  end
end
