class Post
    attr_accessor :title, :author

 @@posts = []

  def initialize(title, author=nil)
    @title = title
    @author = author
    @@posts << self
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

  def self.all
    @@posts
  end
end
