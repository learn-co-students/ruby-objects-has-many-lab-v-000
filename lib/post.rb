class Post
  
attr_accessor :title, :author 

    def initialize(title, author = nil)
     @title = title 
    end 
   
    def author_name
     if self.author
      self.author.name
     else
       nil
    end
  end

end 