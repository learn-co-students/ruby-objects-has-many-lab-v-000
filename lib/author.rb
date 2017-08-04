class Author
    attr_accessor :name, :posts
     
   @@post_count = 0

    def initialize(name)
        self.posts = []
        self.name = name 
    end

    def add_post(post)
        self.posts << post
        post.author = self
        @@post_count += 1
    end
#    takes in an argument of a post title, creates a new 
#    post with it and associates the post and author
    def add_post_by_title(title)
        post = Post.new(title)  
        add_post(post) 
    end

    def self.post_count
        @@post_count
    end

end