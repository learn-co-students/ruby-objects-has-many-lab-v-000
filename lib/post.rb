class Post

attr_accessor :author
attr_reader :title, :name

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author == nil
      nil
    else
    self.author.name
    end
  end

  # Other option:
  #if self.artist
  #    self.artist.name
  #  else
  #    nil
end
