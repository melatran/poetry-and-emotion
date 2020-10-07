require 'rails_helper'

describe SearchResults do
  it "can get the search results of an author" do
    poem_info = SearchResults.new.author_poem_info("Emily")

    expect(poem_info).to be_an(Array)
    expect(poem_info.count).to eq(10)
    expect(poem_info[0].title).to eq("Not at Home to Callers")
    expect(poem_info[0].author).to eq('Emily Dickinson')
    expect(poem_info[0].lines).to eq("Not at Home to Callers, Says the Naked Tree --, Bonnet due in April --, Wishing you Good Day --")
    expect(poem_info[0].tones).to eq("Joy")
  end
end