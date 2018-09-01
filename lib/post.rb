class Post

  attr_accessor :title, :author

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
    end

    def author_name
      self.author.name if self.author
    end

  end
