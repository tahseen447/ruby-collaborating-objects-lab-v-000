class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name=nil)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    new_song = self.new
    new_song.name = filename.split(" - ")[1]
    new_song.artist.name = filename.split(" - ")[0]
    new_song
  end

end
