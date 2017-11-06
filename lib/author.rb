class Author
    
        attr_accessor :name, :post, :title
    
        def initialize(name)
            @name = name     
        end
    
        def posts(post)
            @posts << post
    
            self.name.post
    
        end
    
        def add_post(post)
            @posts << post
    
            self.name.post
        end
    
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
    