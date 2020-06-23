class Post
  attr_accessor :title, :author
  def initialize(n) @title=n; @author=nil end
  def author_name() @author==nil ? nil : @author.name end
end
