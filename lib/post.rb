class Post

	attr_accessor :author, :title, :name

	def initialize(title)
		@title = title
	end

	def author_name
		@author.name unless @author == nil
	end
end