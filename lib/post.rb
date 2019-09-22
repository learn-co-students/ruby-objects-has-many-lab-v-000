class Post 
  
  attr_accessor :author, :title
   
   def initialize(title, author = nil)
     @title = title
     @author = author
   end
   
   def author_name
     if self.author == nil 
       nil
     else
       self.author.name
     end
   end

end