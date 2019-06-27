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
    Song.new(name).genre = genre
  end

  def songs
    Songs.all.select {|s| s.artist == self}
  end
end
