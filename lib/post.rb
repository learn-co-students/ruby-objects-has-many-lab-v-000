require 'pry'
class Post
  attr_accessor :title, :author, :author_name

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author #.self referes to post
      author.name
    else
      nil #when we call author, it goes
    #back to the Author class and looks for an

    end
  end
end
