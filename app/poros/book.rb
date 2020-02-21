class Book

  attr_reader :title, :author

  def initialize(info)
    @title = info[:title]
    @author = info[:author_name].join(",")
  end
end
