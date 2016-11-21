class Post

<<<<<<< HEAD
  attr_accessor :title, :author
=======
  attr_accessor :author, :title
>>>>>>> 135035c388aad048a91c77ee3c3237b9010206a2

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
<<<<<<< HEAD
    end
  end
end
=======
  end
end
end
>>>>>>> 135035c388aad048a91c77ee3c3237b9010206a2
