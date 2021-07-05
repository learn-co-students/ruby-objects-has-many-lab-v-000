class Author
attr_accessor :name, :post
@@post_count = 2

def initialize(name)
  @name = name
  @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

    def add_post_by_title(title)
      post = Post.new(title)
      @posts << post
      post.author = self
    end

    def self.post_count
      @@post_count
    end

  def posts
    @posts
  end
end
