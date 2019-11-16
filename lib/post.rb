class Post
  attr_accessor :title, :author

  @@all = []

  def self.post_database
    @@all
  end

  def initialize(title)
    @title = title
    self.class.post_database << self
  end

  def author_name
    self.author ? self.author.name : nil
  end

end
