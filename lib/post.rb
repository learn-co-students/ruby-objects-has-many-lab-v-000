class Post
  attr_accessor :post, :author, :author_name
  def initialize(title)
    @title = title
    @posts = []#artist collection of songs
  end
  def title
    @title
  end
  def author_name
    author.name if author#if author is truthy!=nil 
  end

end
