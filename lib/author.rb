require 'pry'
class Author
 attr_accessor :name
 @@post_count = 0

 def initialize(name)
   @name = name
   @posts = []
 end

 def posts # is this just to make it simpler and more elegant to call later on?
   @posts
 end

 def add_post(post)

   self.posts << post #clarify this author's post array << new post
   post.author = self #tells the post class to include this author's post ?
   @@post_count += 1
binding.pry
 end
 


 def add_post_by_title(title)
   post = Post.new(title)
   self.posts << post
   post.author = self
   @@post_count += 1
 end

 def self.post_count
   @@post_count
 end
end
=begin



  def add_song_by_name(name)  # just a string comes in
    song = Song.new(name)
    self.songs<<song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name)  # just a string comes in
    song = Song.new(name)
    self.songs<<song
    song.artist = self
    @@song_count +=1
  end

   describe "#add_post_by_title" do
     it "takes in an argument of a post title, creates a new post with it and associates the post and author" do
       betty.add_post_by_title("My Great Blog Post")
       # binding.pry
       expect(betty.posts.last.title).to eq("My Great Blog Post")
       expect(betty.posts.last.author).to eq(betty)
     end
   end
=end
