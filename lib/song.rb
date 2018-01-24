class Song
attr_accessor :name, :artist


def initialize (name)
@name = name    
@artist = nil
end

def artist_name
        if @artist != nil
        @artist.name
        else
        return nil
        end
end


end
