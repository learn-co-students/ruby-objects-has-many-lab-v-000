class Post

  attr_accessor :title, :author
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
#
  def author_name
    self.author.name
    rescue
    nil

  end
#     if self.author
#       self.author.name
#     else
#       nil
#     end
end
