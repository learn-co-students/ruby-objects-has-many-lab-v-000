class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    add_posts
  end

  def self.all
    @@all
end

  def add_posts
    @@all << self
end

  def author_name
    if self.author
      self.author.name
    else nil

    end



end

end
