class BookFetcher

 def connection
   Faraday.new('http://openlibrary.org')
 end

 def book_response(book_title)
   conn = connection
   response = conn.get(search.json) do |req|
     req.params['title'] = book_title
   end
   book_parse(response)
   require "pry"; binding.pry
 end

 def book_parse(response)
   JSON.parse(response.body)
   require "pry"; binding.pry
 end

end
