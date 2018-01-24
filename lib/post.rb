#####new                                                                                                                                 
#is initialized with an argument of a title                                                                                         
#####title                                                                                                                               
#has a title                                                                                                                        
#####author                                                                                                                              
#belongs to an author                                                                                                               
#####author_name                                                                                                                         
#knows the name of its author                                                                                                       
#returns nil if the post does not have an author

class Post
  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    self.author ? self.author.name : nil
  end
end