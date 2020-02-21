class SearchResults
  attr_reader :book_title

  def initialize(book_title)
    @book_title = book_title
  end

  def get_data
    BookFetcher.new.book_response(book_title)
  end

  def book_results
    data = get_data
    data.map do |book_info|
      Book.new(book_info)
    end
  end
end