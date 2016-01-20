require 'pry'
class Post

  attr_accessor :author, :title

  def initialize(title)
    self.title = title
  end

  def author_name
    self.author.name if defined? self.author.name
  end

end
