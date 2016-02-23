class Post
  attr_accessor :title,:author

  def initialize(name)
    @title = name
  end

  def author_name
    if self.author != nil
      self.author.name
      else
      nil
    end
  end


end
