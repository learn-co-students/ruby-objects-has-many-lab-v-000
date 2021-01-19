class Post # belongs to author

attr_accessor :title, :author, :posts
	@@all = []

	def initialize(title)
		@title = title
		@@all << self
		@author = author #tells post its author name
	end

# sets author as instance var & method for post
	 def author=(author)
	 	@author = author #tells post its author name
	 	if !@author.posts.include?(self)
	  		@author.posts << self # add post to author collection if not already
	 	end
	 end

# returns array of all posts created
	def self.all
		@@all
	end

# if post instance has an @author, then
# return author's name, else return nil
	def author_name
		if self.author
			 self.author.name
		else
			nil
		end
	end

#class post end below
end
