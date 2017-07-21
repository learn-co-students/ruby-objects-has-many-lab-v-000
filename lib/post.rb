class Post
  attr_accessor :post, :author, :title

  def initialize(title = "None")
    @title = title
  end

  def author_name
    @author.nil? ? nil : @author.name
  end
end
