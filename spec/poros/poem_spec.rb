require 'rails_helper'

describe Poem do
  it "can create a poem object" do
    data = {
      title: "Not at Home to Callers",
      author: "Emily Dickinson",
      lines: [
        "Not at Home to Callers",
        "Says the Naked Tree --",
        "Bonnet due in April --",
        "Wishing you Good Day --"
      ],
      linecount: "4"
    }

    poem = Poem.new(data)
    expect(poem.title).to eq("Not at Home to Callers")
    expect(poem.author).to eq("Emily Dickinson")
    expect(poem.lines).to eq([
        "Not at Home to Callers",
        "Says the Naked Tree --",
        "Bonnet due in April --",
        "Wishing you Good Day --"
      ])
    expect(poem.linecount).to eq("4")
  end
end