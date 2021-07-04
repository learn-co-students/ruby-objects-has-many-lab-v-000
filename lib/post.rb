class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = author
  end

  def author_name
      if author.nil?
        return
      else
        author.name
      end
  end
end
