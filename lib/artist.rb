# Artist
#   #name
#     has a name (FAILED - 1)
#   .all
#     knows about all artist instances (FAILED - 2)
#   #songs
#     returns all songs associated with this Artist (FAILED - 3)
#   #new_song
#     given a name and genre, creates a new song associated with that artist (FAILED - 4)
#   #genres
#     has many genres, through songs (FAILED - 5)
require 'pry'

class Artist

  attr_accessor :name
  @@all = []
  @songs = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self ,genre)
    song
    # binding.pry
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end

end