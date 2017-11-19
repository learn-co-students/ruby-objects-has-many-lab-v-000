class Author
    @@post_count = 0
    attr_accessor :posts, :name
    def initialize(name)
        @posts = []
        @name = name
    end

    def add_post(post)
        @posts << post
        post.author = self
        @@post_count += 1
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def self.post_count
        @@post_count
    end
end