require 'rails_helper'

describe Review do
  it "has the necessarry attributes" do

    review_data =
          {
              "url": "https://www.nytimes.com/2019/10/09/books/review-man-who-saw-everything-deborah-levy.html",
              "publication_dt": "2019-10-09",
              "byline": "PARUL SEHGAL",
              "book_title": "The Man Who Saw Everything",
              "book_author": "Deborah Levy",
              "summary": "“The Man Who Saw Everything,” which was longlisted for the Booker Prize, looks at masculinity through the perspective of a young historian who sneers at “authoritarian old men.”",
              "uuid": "00000000-0000-0000-0000-000000000000",
              "uri": "nyt://book/00000000-0000-0000-0000-000000000000",
              "isbn13": [
                  "9781632869845"
              ]
          }

    review = Review.new(review_data)
    expect(review.summary).to eq("“The Man Who Saw Everything,” which was longlisted for the Booker Prize, looks at masculinity through the perspective of a young historian who sneers at “authoritarian old men.”")
  end
end
