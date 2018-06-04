require 'pry'
class Post
  attr_accessor :name, :author, :post, :title

  @@all = []

  def initialize(title)

    @title = title
    @@all << self

  end

  def self.all
    @@all
  end

  def author_name
    if author == nil
      nil
    else
    self.author.name
  end
  end


end
