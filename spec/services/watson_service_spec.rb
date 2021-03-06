require 'rails_helper'

describe WatsonService do
  it ".analyze_poem" do
    data = {
      title: "Not at Home to Callers",
      author: "Emily Dickinson",
      lines: [
        "Not at Home to Callers",
        "Says the Naked Tree --",
        "Bonnet due in April --",
        "Wishing you Good Day --"
      ]
    }
    poem = Poem.new(data)
    service = WatsonService.new
    tone_analyzer = service.analyze_poem(poem.lines)
    
    expect(tone_analyzer).to have_key(:document_tone)
    expect(tone_analyzer[:document_tone]).to have_key(:tones)
    expect(tone_analyzer[:document_tone][:tones][0]).to have_key(:tone_name)
    expect(tone_analyzer[:document_tone][:tones][0][:tone_name]).to eq("Joy")
  end
end