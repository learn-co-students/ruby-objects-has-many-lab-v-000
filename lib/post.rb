class Post
  attr_accessor :author, :name

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def all
    @@all
  end

  def self.all
    @@all
  end

  def title
    @title
  end

  def author
    @author
  end

  def author_name
    if author
      self.author.name
    else
      nil
    end 
  end

end
