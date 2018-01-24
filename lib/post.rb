class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  #Refactored #author_name
  def author_name
    self.author ? self.author.name : nil 
  end

  # old code for #author_name

  # def author_name
  #   if author != nil
  #     self.author.name
  #   else
  #     nil
  #   end
  # end

end