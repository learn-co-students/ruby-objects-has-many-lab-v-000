require "pry"
class Post
  attr_accessor :name, :author, :title, :author_name

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author == nil
       return nil
     else
       return self.author.name
    end
  end

 end
