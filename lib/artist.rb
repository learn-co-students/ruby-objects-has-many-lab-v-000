class Artist
        attr_accessor :name
@@song_count=[]
@@songs=[]
        def initialize(name)

                @artist=name
                @songs=[]
        end

        def name
                @artist
        end
        def songs
@songs
        end
        def add_song(song)
                @songs << song
                song.artist=self
                @@songs << @songs
        end

        def add_song_by_name(song)
 song = Song.new(song)
    @songs << song
    song.artist = self
@@songs << @songs


        end
        def self.song_count
                @@song_count=@@songs.count
        end
end