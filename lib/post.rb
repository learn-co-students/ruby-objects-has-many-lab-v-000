class Post

  attr_accessor :author #post belongs to author object
  attr_reader :title

  def initialize(title)
    @author = author
    @title = title
  end

  def author_name
    if author == nil #if post doesn't have an author return nil
      nil
    else
      #knows the name of it's author
      self.author.name #else return the name of the instance of the author
    end
  end
end
