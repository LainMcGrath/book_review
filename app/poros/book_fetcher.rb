class BookFetcher

 def open_library_connection
   Faraday.new('http://openlibrary.org')
 end

 def ny_times_connection
   Faraday.new('https://api.nytimes.com')
 end

 def book_response(book_title)
   conn = open_library_connection
   response = conn.get('search.json') do |req|
     req.params['title'] = book_title
   end
   book_parse(response)
 end

 def book_review_response(book_title)
   conn = ny_times_connection
   response = conn.get("svc/books/v3/reviews.json") do |req|
     # everytime I pass the API key in with an ENV variable, I receive a failed response???
     # hard keyed for the sake of time
     # req.params['api-key'] = ENV['ny_times_api_key']
     req.params['api-key'] = 'RNd9svtLddzX5F8rreYcdHYBE3CbfWLA'
     req.params['title'] = book_title
   end
   review_parse(response)
 end

 def book_parse(response)
   JSON.parse(response.body, symbolize_names: true)
 end

 def review_parse(response)
   JSON.parse(response.body, symbolize_names: true)
 end

end
