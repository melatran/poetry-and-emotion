class SearchResults
  def author_poem_info(author)
    json = PoetryService.new.get_poems(author)
    poem_info = json.map do |poem_data|
      poem_obj = Poem.new(poem_data)
    end
  end
end