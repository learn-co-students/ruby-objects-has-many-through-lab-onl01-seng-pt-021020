# class Genre
#
# @@all = []
#
#   attr_reader :name, :genre, :artist
#   attr_accessor :song
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def songs
#     Song.all.select {|song| song.genre == self}
#   end
#
#   def artists
#     Song.all.map { |song| song.artists }
#   end
# end

class Genre

@@all = []

  attr_reader :name, :genre
  attr_accessor :song

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Song.all.map do |song|
      song.artist
    end
  end
end
