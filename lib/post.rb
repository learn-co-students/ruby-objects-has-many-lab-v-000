class Post 
  attr_accessor :title, :author

@@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end


end
















# class Post
#   attr_accessor :name

#   @@all = 0

#   def initialize(title)
#     @title = title
#   end

#   def add_posts(post)
#     self.posts << post
#     posts.title = self
#     @@song_count +=1
#   end

#   def add_song_by_name(name)
#     song = Song.new(name)
#     self.posts << posts
#     posts.author = self
#     @@post_count +=1
#   end

#   def title
    
#   end
  
#   def author
    
#   end
  
#   def author_name
    
#   end

#   def posts
#     @posts
#   end

#   def self.post_count
#     @@post_count
#   end
# end