require 'pry'
class Post
attr_accessor :author, :title, :name, :post

  def initialize(title)
    @title = title
  end

  def author_name
  if  self.author
    @author = author.name
  else
    nil
  end
    end
end
