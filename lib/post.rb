require 'pry'
class Post
  attr_accessor :title, :author

    def initialize(title)
      @title = title
    end


    def new_post
      self.post.title
    end

    def author_name
      if self.author
        author.name
      end
    end




end
