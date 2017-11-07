require 'pry'

class Author
    
        attr_accessor :name, :posts, :post, :title
    
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
            @@song_count +=1 
        end
        # binding.pry
        def add_post_by_title(title)
            post = Post.new(title)
            add_post(post)
        end
        
        def self.post_count
            @@post_count
        end
    
    end
    