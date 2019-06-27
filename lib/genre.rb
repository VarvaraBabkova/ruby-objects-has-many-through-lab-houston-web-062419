class Genre
  @@all = []
  attr_accessor :genre

  def initialize(name)
    @genre = name
    @@all << self
  end

  def self.all
    @@all
  end
end
