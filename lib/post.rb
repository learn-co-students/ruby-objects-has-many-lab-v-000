class Post
  attr_accessor :author, :title

	def initialize(title)
		@title = title
	end

  def author_name
    begin
      @author.name
    rescue
      nil # returns nil if error occurs
    end
	end

end
