# An author should have many posts and a post should belong to an author.
require 'pry'

class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def title
    @title
  end

  def all
    @@all
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end

end
