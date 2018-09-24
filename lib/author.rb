require 'pry'

class Author

  attr_accessor :name, :title, :author

  @@post_number = 0

  def initialize(name)
    @name = name
    @posts = []
    @author = author
    @title = title
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_number += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_number += 1
  end

def add_song(song)
  @songs << song
  song.artist = self
  @@song_count += 1
end

def add_song_by_name(name)
  song = Song.new(name)
  @songs << song
  song.artist = self
  @@song_count += 1
end

  def self.post_count
    @@post_number
  end

end
