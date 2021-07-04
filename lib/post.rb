class Post

  attr_accessor :name, :author, :title

  def initialize(name)
    @name = name
  end

  def title  #I don't understand how this works
    self.name
  end

  def author_name
    if defined? self.author.name
      self.author.name
    else
      nil
    end
  end

end
