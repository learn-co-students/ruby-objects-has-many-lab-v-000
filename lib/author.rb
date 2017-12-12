class Author
    
   attr_accessor :posts, :name 
   
   @@post_count = 0
   
   def self.post_count
       @@post_count
   end
    
    def initialize(name)
        @name = name
        @posts = []
    end
    
    def add_post(newpost)
        newpost.author = self
        @posts << newpost
        @@post_count += 1
    end
    
    def add_post_by_title(title)
       newpost = Post.new(title)
       newpost.author = self
       @posts << newpost
       @@post_count += 1
    end
end