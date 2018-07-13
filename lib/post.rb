class Post

  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @@all << self
    @title = title
  end

  def author_name
    if author.nil?
      nil
    else
      author.name
    end
  end

end
