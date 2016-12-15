class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
    @@post_count ||= 0
  end

    def add_post(post)
      @posts << post
      @@post_count += 1
      post.author = self
    end

    def add_post_by_title(title)
      post = Post.new(title)
      add_post(post)
    end

    def posts
      @posts
    end

    def self.post_count
      @@post_count
    end
end
