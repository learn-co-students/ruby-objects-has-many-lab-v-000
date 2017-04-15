class Post # rspec --fail-fast
attr_accessor :author


  def initialize(title)
    @title = title
  end

  def title
    @title
  end

  def author
    @author
  end

  def author_name
    self.author.name if self.author 
  end

end
