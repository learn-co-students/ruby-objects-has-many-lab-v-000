class Post

  attr_accessor :title, :author

  def initialize(title)
    @title  = title
    @author = author
    #@name = name
  end

  def author_name
    @author.nil? ? nil : @author.name
  end

end
