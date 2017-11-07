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
        end
        # binding.pry
        def add_post_by_title(title)
            title = self.new

            self.post.name.title

            # DO I NEED TO INSTANTIATE TITLE HERE?

        end
        
        def self.post_count
            # @@post_count
            
            # self.post.count
            # WAIT TO GET SONG'S METHOD CORRECT
        end
    
    end
    