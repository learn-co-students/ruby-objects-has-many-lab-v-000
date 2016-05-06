class Author

  attr_accessor :name
  attr_reader :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

  # def add_song(song)
  #   @songs << song
  #   song.artist = self
  #   @@song_count += 1
  # end
  #
  # def songs
  #   @songs.dup.freeze
  # end
  #
  # def self.songs
  #   @songs
  # end
  #
  # def add_song_by_name(name)
  #    new_song = Song.new(name)
  #    @songs << new_song
  #    new_song.artist = self
  #    @@song_count += 1
  #  end


  # describe "#add_post" do
  #   it "takes in an argument of a post and adds that post to the author's collection and tells the post that it belongs to that author" do
  #     hello_world = Post.new("Hello World")
  #     betty.add_post(hello_world)
  #     expect(betty.posts).to include(hello_world)
  #     expect(hello_world.author).to eq(betty)
  #   end
  # end



end
