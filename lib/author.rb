class Author
  attr_accessor :name, :posts
  
  @@total_posts = []
  
  def initialize(specific_name)
    @name = specific_name
    @posts = []
  end 
  
   def add_post(specific_song)
    @@total_posts << specific_song
    @posts << specific_song
    specific_song.author = self
  end 
  
  def add_post_by_title(song_name)
    new_song = Post.new(song_name)
    @posts << new_song
    @@total_posts << new_song
    new_song.author = self
  end
  
  def self.post_count
    @@total_posts.size
  end

 
  
end 