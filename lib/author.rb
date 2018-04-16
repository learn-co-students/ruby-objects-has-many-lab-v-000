require 'pry'
class Author
  attr_accessor :name, :posts, :new_post

    def initialize(name)
      @name = name
      @posts = []
    end

    def add_post(post)
      @posts << post
      post.author = self
    end

    def add_song_by_name(new_post)
      

end
