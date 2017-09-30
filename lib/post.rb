require_relative 'author.rb'


class Post
  attr_accessor :title, :author
  def initialize(title)
    @title = title
  end

  def author_name
    if @author.is_a?(Author) == true
      @author.name
    else
      nil
    end
  end



end
