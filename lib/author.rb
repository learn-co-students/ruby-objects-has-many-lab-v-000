require 'pry'

class Author


    attr_accessor :name, :posts


      @@post_count = 0

    def initialize (name)
      @name = name
      @posts = []
    end



    def add_post(post)
      @posts << post
        post.author = self
      @@post_count += 1
    end
      #   takes in an argument of a post and adds that post to the author's collection and tells the post that it belongs to that author

    def add_post_by_title(post)
        post = Post.new(post)
          @posts << post
          post.author = self
        @@post_count += 1
    #   takes in an argument of a post title, creates a new post with it and associates the post and author
    end


  

    def self.post_count
      @@post_count

    end

end
