class WatsonService
  def analyze_poem(lines)
    response = conn.get("/v3/tone") do |req|
      req.params['version'] = "2017-09-21"
      req.params['text'] = lines
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  def conn
    Faraday.new('https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/bbe286c2-3d3c-4fdc-ae5e-89f0419c10cb') do |req|
      req.basic_auth('apikey', ENV['WATSON_KEY'])
    end
  end
end