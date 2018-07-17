class Post
  attr_accessor :author #posts belong to the author
  attr_reader :title #just need to read the title (get it) don't need to set it from here.

  @@all = [] #set empty array to catch the instances (class var)

  def initialize(title)
    @title = title
    @author = author
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
