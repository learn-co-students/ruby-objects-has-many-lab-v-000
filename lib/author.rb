class Author 
  attr_accessor :name 
    
    def initialize(name)
      @name = name
      @posts = []
    end
  
    def add_post(title)
      @posts << title
      title.author = self
    end
    
    def posts
      @posts
    end
    
    def post_count
      @posts.count 
    end 
    
    def add_post_by_title(title)
        title = Post.new(title)
        @posts << title
        title.author = self
    end
    
    def author 
      @name 
    end
    
    def self.post_count
      Post.all.count
    end  

end

