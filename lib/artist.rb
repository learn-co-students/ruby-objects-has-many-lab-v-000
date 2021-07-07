class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self
    self.songs << new_song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def songs
    @songs
  end

end

class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    if artist.nil?
      nil
    else
      artist.name
    end
  end
end

class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end

class Post

  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    if author.nil?
      nil
    else
      author.name
    end
  end

end
