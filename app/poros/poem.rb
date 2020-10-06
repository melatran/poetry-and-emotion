class Poem
  attr_reader :title, :author, :lines, :linecount
  
  def initialize(attributes)
    @title = attributes[:title]
    @author = attributes[:author]
    @lines = attributes[:lines]
    @linecount = attributes[:linecount]
  end
end