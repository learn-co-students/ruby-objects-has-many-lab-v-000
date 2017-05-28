class Post
  attr_accessor :title, :author
  def initialize(title="")
    @author = nil
    @title = title
  end
  def author_name
    if @author == nil
      return nil
    end

    @author.name
  end
end
