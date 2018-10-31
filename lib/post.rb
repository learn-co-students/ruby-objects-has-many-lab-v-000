class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    self.author ? self.author.name : nil
      
  end

end









































# class Post
#   attr_accessor :title, :author

#   def initialize(title)
#     @title = title
#     @author = author
#   end


#   def author_name
#     if @author.nil?
#       nil
#     else
#       self.author.name
#     end
#   end

# end