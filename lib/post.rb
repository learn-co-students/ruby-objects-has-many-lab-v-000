class Post 
 attr_accessor :author, :post , :title

 def initialize(post)
   @post = post 
 end  

 def title 
  @post 
 end 

 def author_name  
    if self.author == nil  
      return nil
    else 
     self.author.name
    end 
   
 end 



end 