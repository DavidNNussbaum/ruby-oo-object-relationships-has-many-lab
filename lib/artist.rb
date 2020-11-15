class Artist
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self }
    end

    # takes in an argument of a song and associates that song with the artist by telling the song that 
    # it belongs to that artist"
    def add_song(song)
         song.artist = self    
    end

    def add_song_by_name(name) # I HAD (song)
         song = Song.new(name)  # I HAD song and left out song=
         song.artist = self  #I MISSED THIS LINE
    end

    def self.song_count
         Song.all.count
    end
end