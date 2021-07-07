class Genre 
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select { |song| song.genre == self }
  end
  
  def artists #has many artists through song
    Song.all.map { |song| song.artist }
  end
end