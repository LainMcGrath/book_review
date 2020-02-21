class BookFetcher

 def connection
   Faraday.new('http://openlibrary.org')
   # Faraday.new('https://api.nytimes.com')
 end

 def book_response(book_title)
   conn = connection
   response = conn.get('search.json') do |req|
     req.params['title'] = book_title
   end
   book_parse(response)
 end

 def book_parse(response)
   JSON.parse(response.body, symbolize_names: true)
 end

end
