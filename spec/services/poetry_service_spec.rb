require 'rails_helper'

describe PoetryService do
  it ".get_poems" do
    service = PoetryService.new
    poet_info = service.get_poems("Emily")

    expect(poet_info).to be_an(Array)
    expect(poet_info.count).to eq(10)
    expect(poet_info[0][:title]).to eq("Not at Home to Callers")
    expect(poet_info[0][:author]).to eq("Emily Dickinson")
    expect(poet_info[0][:lines]).to eq([
      "Not at Home to Callers",
      "Says the Naked Tree --",
      "Bonnet due in April --",
      "Wishing you Good Day --"])
    expect(poet_info[0][:linecount]).to eq("4")
  end
end