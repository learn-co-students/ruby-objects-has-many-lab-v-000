class Post
 attr_accessor :title, :author, :post

 def initialize(title)
   @title = title
   @author = author
   @post = post
 end

 def new
   @title
   @author
 end

 def author
   @author
 end

 def author_name
   if self.author
     self.author.name
   else
     nil
   end
 end

end
