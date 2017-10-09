class Author

    attr_accessor :name
    @@post_count = 0
    @@authors = []

    def initialize(name)
      @name = name
      @posts = []
      @@authors << self
    end

    def posts
      @posts
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
      @@authors.each do |author|
        array_length = author.posts.length
      @@post_count = @@post_count + array_length # add length of posts array for each author to post count
      end
      @@post_count # return updated post count
    end
end
