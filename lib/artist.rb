class Artist
  attr_reader :name


  # class variables
  @@all = []

  # class methods
  def self.all
    @@all
  end


  # instance methods
  def initialize(name)
    @@all << self

    @name = name
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.collect {|song| song.genre}
  end

end
