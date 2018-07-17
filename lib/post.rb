class Post
  attr_accessor :name, :author
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    @author = author
    #@title = title #?
    @@all << self
  end

  def author_name
      if self.author # if the local var author matches the self (stored author for instance)
        self.author.name
      else
        nil
      end
  end

    def self.all
      @@all
    end
end
