require 'pry'
class Post
  attr_accessor :title, :author, :name

  def initialize(title)
    @name = name
    @title = title
    @author = author
  end

  def author_name
    self.author.name if defined?(self.author.name)
  end

end