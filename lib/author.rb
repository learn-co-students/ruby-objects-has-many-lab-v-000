class Author
  attr_accessor :name

  @@post_count = 0

    def initialize(name)
      @name = name
      @posts = []
    end

    def posts
      @posts
    end

    def add_post(post)
      @posts<<posts
      post.author = self unless post.author == self
    end

    def add_post_by_title(title)
      post=Post.new(title)
      @posts<<post
      post.author = self unless post.author == self
    end

    def self.post_count
      @posts.count
    end

end
