class Artist

  @@all  = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    s = Song.new(name)
    s.genre = genre
    s.artist = self
  end

  def songs
    Song.all.select {|s| s.artist == self}
  end
end
