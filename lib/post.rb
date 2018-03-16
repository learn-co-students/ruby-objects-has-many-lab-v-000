class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end #def initialize

  def author_name
    if self.author != nil
      self.author.name
    else
      nil
    end#if self.author
  end #def author_name

end #class Post
