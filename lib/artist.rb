# class Artist
#   attr_accessor :name, :genre
#   @@all = []
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
#   def new_song(name, genre)
#     song = Song.new(name, self, genre)
#   end
#
#   def songs
#     Song.all.select {|song| song.artist == self}
#   end
#
#   def genres
#     Genre.all.select {|genre| genre.artist == self}
#   end
# end

class Artist

  attr_accessor :name, :artist, :genre

  ALL=[]

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs.last
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
