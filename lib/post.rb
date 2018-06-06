class Post
  attr_accessor :author
  @@all=[]
  def initialize(title)
    @title=title
    @@all<<self
  end

  def title
    @title
  end

  def self.all
    @@all
  end

  def author_name
    if self.author
      self.author=author.name
    else
      nil
    end
  end
end


    
