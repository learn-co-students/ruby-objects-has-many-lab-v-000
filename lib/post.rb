require 'pry'

class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    @author.instance_variable_defined?(:@name)?  @author.name : nil
  end

end
