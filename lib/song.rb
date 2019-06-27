class Song
  @@all

  attr_accessor :artist, :genre, :name

  def initialize (name)
    @name = name
    @@all << self
  end
end
