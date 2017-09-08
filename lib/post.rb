class Post

  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    result = nil
    result = self.author.name if @author
    #make sure won't break if song has no artist (return nil)
    result
  end

end
