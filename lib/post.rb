require 'pry'

class Post
    attr_accessor :title, :author
    @@song_count = 0

  def initialize(title)
      @title = title
      @@song_count += 1
    end

  def author_name
    if self.author != nil
      author.name
    else

    nil
    end
  end

end
