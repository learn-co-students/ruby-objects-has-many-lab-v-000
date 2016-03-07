class Post
  attr_accessor :title, :message, :author

  def initialize(title="",author="")
    @title= title
# @message = message
    @author = author
  end
  def author_name
    @author == "" ? nil : @author.name
  end
end