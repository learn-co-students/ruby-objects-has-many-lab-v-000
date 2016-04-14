class Author 

	attr_accessor :name, :posts

	@@authors = []
	@@post_count = 0 

	def initialize(name)
		@name = name
		@posts = []
		@@authors << self
	end

	def add_post(post)
		@posts << post
		post.author = self
	end

	def add_post_by_title(post_title)
		post = Post.new(post_title)
		post.author = self
		@posts << post
	end

	def self.post_count
		@@authors.each do |author|
			total_author_posts = author.posts.length
			@@post_count += total_author_posts 
		end
		@@post_count
	end

end