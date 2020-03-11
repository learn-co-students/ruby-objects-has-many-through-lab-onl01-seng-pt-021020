require "pry"
class Artist
  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    # artist_songs=[]
    # Song.all.each do |s|
    #  if s.artist==self
    #    artist_songs << s
    #  end
    # end
    # artist_songs
    Song.all.select{|song| song.artist==self}
  end

  def genres
    songs.map{|s| s.genre}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end


end
