class PoetryService
  def get_poems(author)
    response = Faraday.get("https://poetrydb.org/author/#{author}")
    json = JSON.parse(response.body, symbolize_names: true)
    json[0..9]
  end
end
