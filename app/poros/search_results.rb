class SearchResults
  attr_reader :book_title

  def initialize(book_title)
    @book_title = book_title
  end

  def get_book_data
    BookFetcher.new.book_response(book_title)
  end

  def get_review_data
    BookFetcher.new.book_review_response(book_title)
  end

  def book_results
    data = get_book_data
    create_book(data)
  end

  def create_book(data)
    data[:docs].map do |book_info|
      Book.new(book_info)
    end
  end

  def book_review
    data = get_review_data
    create_review(data)
  end

  def create_review(data)
    data[:results].map do |book_info|
      Review.new(book_info)
    end
  end
end
