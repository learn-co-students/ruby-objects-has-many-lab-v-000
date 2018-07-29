class Post
  attr_accessor :name, :author  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
  
  def title
    title = self.name
  end
  
  def all
    @@all
  end
end

 