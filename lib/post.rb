

class Post
    
    attr_accessor :name, :title, :author
    
    def initialize(title)
        @title = title
   
        @post = []
    
    end
       
    
    def author_name             
      if self.author 

        self.author.name 
        end
    end

end
    