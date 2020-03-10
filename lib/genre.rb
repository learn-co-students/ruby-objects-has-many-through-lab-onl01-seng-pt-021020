class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  #has a name

  def self.all
    @@all
  end
  #knowns about all genre instances

  def songs
    Song.all.select { |s| s.genre == self}
  end
  #has many songs

  def artists
    Song.all.select { |s| s.genre == self}.map {|m| m.artist}
  end
  #has many artists, throughb songs 

end
