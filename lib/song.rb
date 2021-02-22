require 'pry'

class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre) 
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
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
    genre_count = Hash.new(0) #note that the zero is needed
    #data.each{|v| h[v] += 1} this is how to turn something into a histogram (example)
    @@genres.collect{|genre| genre_count[genre] += 1}
    genre_count
end

def self.artist_count
    artist_count = Hash.new(0)
    @@artists.collect{|artist| artist_count[artist] += 1}
    artist_count
end

end
