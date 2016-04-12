class Post
  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    # if self.author == nil
    #   nil
    # else
    #   self.author.name
    # end 
    if self.author
      self.author.name
    else
      nil
    end
  end
end