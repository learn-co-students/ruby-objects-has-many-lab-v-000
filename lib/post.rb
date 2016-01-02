class Post
	attr_accessor :title
	attr_accessor :author

	def initialize(title)
		@title = title
	end

	def author_name
		if @author != nil
			@author.name
		else
			nil
		end
	end
end
