class Poem
  attr_reader :title, :author, :lines
  attr_accessor :tones
  
  def initialize(attributes)
    @title = attributes[:title]
    @author = attributes[:author]
    @lines = attributes[:lines].join(', ')
    @tones = sentiment_analysis
  end

  def sentiment_analysis
    analysis = WatsonService.new.analyze_poem(@lines)
    tones = []
    analysis[:document_tone][:tones].each do |tone_data|
      tones << tone_data[:tone_name]
    end
    return tones.join(', ')
  end
end