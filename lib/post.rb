require 'pry'

class Post
  attr_accessor :author, :post, :title, :name

  def initialize(title)
    @post = post
    @author = author
    @title = title 
    @name = name
  end

  def author_name
    if @author != nil
      self.author.name 
    else
      nil
    end
  end

end