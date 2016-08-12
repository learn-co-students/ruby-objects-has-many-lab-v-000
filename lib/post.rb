class Post

  attr_accessor :title, :author, :name

  def initialize(title)
    @title = title
  end

  def author_name
    author_name_empty = nil
      if (self.author.nil?)
        author_name_empty
      else
        author_name = self.author.name
      end
  end

end
