class SearchController < ApplicationController
  def index
    author = params[:author]
    @poem_info = SearchResults.new.author_poem_info(author)
  end
end