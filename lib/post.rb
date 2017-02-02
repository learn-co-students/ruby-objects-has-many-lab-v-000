class Post
  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    unless @author.nil?
      @author.name
    end
  end
end#class Post
