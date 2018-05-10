require 'pry'

class Post

  attr_accessor :title, :author, :name

  def initialize(title)
    @title = title
  end

  def author_name
    self.author.nil? ? nil : self.author.name
  end

end
