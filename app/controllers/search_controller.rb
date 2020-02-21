class SearchController < ApplicationController
  def show
  end
  
  def index
    render locals: {
      search_results: SearchResults.new(params[:title])
    }
  end
end
