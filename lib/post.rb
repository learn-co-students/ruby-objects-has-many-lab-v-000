require 'pry'

class Post
  attr_accessor :title, :author

  @@all = Array.new

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author == nil ? nil : self.author.name
  end
end
