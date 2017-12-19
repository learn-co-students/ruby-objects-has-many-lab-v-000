class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    artist&.name
  end
end

# foo = {}
# foo[:bar] # => nil
# foo[:bar][:qux] # => Error!

# foo.dig(:bar, :qux) # => nil