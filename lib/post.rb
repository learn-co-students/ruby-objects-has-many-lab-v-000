class Post
  attr_accessor :title, :genre, :author

  def initialize(title, genre = nil)
    @title = title
    @genre = genre
  end

  def author_name
    self.author.name if self.author != nil
  end
end
