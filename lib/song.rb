class Song 

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
end

def self.count
    @@count
end

def self.artists
    @@artists.uniq
end

def self.genres
    @@genres.uniq
end

def self.genre_count
hash = {}
@@genres.uniq.each do |genre|
    hash[genre] = @@genres.count {|g| g == genre}
end
hash
end

def self.artist_count
    hash = {}
    @@artists.uniq.each do |artist|
        hash[artist] = @@artists.count {|a| a == artist}
    end
    hash
end

end