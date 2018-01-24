class Post
  attr_accessor :title, :author

  @@total = 0

  def initialize(title)
    @title = title
    @@total += 1
  end

  def self.total
    @@total
  end

  def has_author?
    !!author
  end

  def author_name
    has_author? ? self.author.name : nil
  end

end
