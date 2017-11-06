class Post
    
    attr_accessor :name, :title
    
    def initialize(title)
        @name = name
   
        @song = []
    
    end
    
    # def title(
        # #  don't need this because attraccessor
        # end
    
    def author
        self.post.name
       # SHOULD THIS involve a CLASS VARIABLE? SHOULD IT TAKE AN ARGUMENT?
    end
    
    def author_name             
        if self.name.post == nil
           nil   
        end
    end
    
end
    