class Author
    attr_accessor :name, :posts

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(post)
        post = Post.new(post)
        @posts << post
        post.author = self
    end

    def self.post_count
        total_posts = []
        @@all.each do |author|
            total_posts += author.posts
        end
        total_posts.length
    end
end
