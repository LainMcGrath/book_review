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

    #if I had time I would want to go back and handle books with multiple authors
    expect(page).to have_content('Author: Deborah Levy')

    review_1 = "“The Man Who Saw Everything,” which was longlisted for the Booker Prize, looks at masculinity through the perspective of a young historian who sneers at “authoritarian old men.”"
    review_2 = "Deborah Levy’s latest novel, “The Man Who Saw Everything,” experiments with time travel, history and the endless complications of love."

    expect(page).to have_css('.review', count: 2)
    expect(page).to have_content(review_1)
    expect(page).to have_content(review_2)
  end
end
