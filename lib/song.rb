class Song
  attr_reader :name, :artist, :genre


  # class variables
  @@all = []

  # class methods
  def self.all
    @@all
  end


  # instance methods
  def initialize(name, artist, genre)
    @@all << self

    @name = name
    @artist = artist
    @genre = genre
  end

end
