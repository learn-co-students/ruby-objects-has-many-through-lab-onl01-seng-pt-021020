class Genre
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
    Song.all.select {|song| song.genre == self}
  end

end
