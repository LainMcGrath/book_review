require 'rails_helper'

RSpec.describe Book do
  it "has the necessarry attributes" do

    #test does not pass but ran out of time
    # but WHY doesn't it pass??

    book_data =
          {
              "title_suggest": "The Man Who Saw Everything",
              "publisher": [
                  "Bloomsbury Publishing"
              ],
              "cover_i": 8918911,
              "isbn": [
                  "1632869845",
                  "9781632869845"
              ],
              "has_fulltext": false,
              "title": "The Man Who Saw Everything",
              "edition_key": [
                  "OL27460450M"
              ],
              "last_modified_i": 1571153555,
              "edition_count": 1,
              "author_name": [
                  "Deborah Levy"
              ],
              "cover_edition_key": "OL27460450M",
              "seed": [
                  "/books/OL27460450M",
                  "/works/OL20261821W",
                  "/authors/OL240271A"
              ],
              "first_publish_year": 2019,
              "publish_year": [
                  2019
              ],
              "key": "/works/OL20261821W",
              "text": [
                  "OL27460450M",
                  "1632869845",
                  "9781632869845",
                  "Deborah Levy",
                  "OL240271A",
                  "The Man Who Saw Everything",
                  "/works/OL20261821W",
                  "Bloomsbury Publishing"
              ],
              "publish_date": [
                  "2019"
              ],
              "author_key": [
                  "OL240271A"
              ],
              "type": "work",
              "ebook_count_i": 0
            }

     book = Book.new(book_data)
     expect(book.title).to eq("The Man Who Saw Everything")
     expect(book.author).to eq("Deborah Levy")
  end
end
