class Post
  attr_accessor :title, :author
  @@posts=[]
  @@all=[]
  def initialize(title)
    @title=title
    @@all << self
    @@posts << title
  end
  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
  end