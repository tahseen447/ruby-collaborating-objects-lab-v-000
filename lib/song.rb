class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    new_song = self.new(filename.split(" - ")[1])
    new_song.artist.name = filename.split(" - ")[0]
  end

  def self.all
    @@all
  end
end
