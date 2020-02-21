class Review

  attr_reader :summary

  def initialize(book_info)
    @summary = book_info[:summary]
  end

end
