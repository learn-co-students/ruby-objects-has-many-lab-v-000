
class Post 

  attr_accessor :author

  def initialize(title)
    @title = title 
  end

  def title
    @title
  end

  def author_name
    return nil if self.author.nil?
    self.author.name
  end



end