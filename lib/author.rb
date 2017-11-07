require 'pry'

class Author
    
        attr_accessor :name, :posts, :post, :title
    
        @@post_count = 0

        def initialize(name)
            @name = name  
            @posts = []   
        end
    
        def posts
            @posts
        end
    
        def add_post(post)
            @posts << post
            post.author = self    
            @@post_count +=1 
        end
      
        def add_post_by_title(title)
            post = Post.new(title)
            add_post(post)
        end

        #   binding.pry
        def self.post_count
            @@post_count
        end
    
    end
    