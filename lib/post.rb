class Post
  attr_accessor :name, :post, :title, :author

  def initialize(title)
    @title = title
    @name = name
  end

  def author_name
     if self.author != nil
       self.author.name
     else
       nil
     end
  end

end
