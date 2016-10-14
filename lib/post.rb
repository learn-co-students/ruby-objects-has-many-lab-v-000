class Post

  attr_accessor :author, :title

  def initialize(title)
    self.title = title
    self.author = nil
  end

  def author_name
    @author.nil? ? nil : @author.name
  end

end
