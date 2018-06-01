class Post
  @@all = []
  attr_accessor :author, :title, :name

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    @author
  end

  def title
    @title
  end

  def author_name
    if self.author
      return self.author.name
    else
      nil
    end
  end

end
