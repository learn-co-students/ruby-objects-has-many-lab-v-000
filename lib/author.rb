class Author
    attr_accessor :name, :post
    
    def initialize(name)
        @name = name
        @posts = []
        @@post_count = 0
    end
    
    def posts
        @posts
    end 
    
    def add_post(post)
        @posts << post
        post.author = self
    end 
    
    def add_post_by_title(name)
        post = Post.new(name, post)
        @posts << post
        post.author = self
    end 
    
    def self.post_count
        @@post_count += 2
    end 
        
        
end 