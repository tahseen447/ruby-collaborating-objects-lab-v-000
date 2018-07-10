class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name=nil)
    @name = nil
    @@all << self
  end

  def self.new_by_filename(filename)
    new_song = self.new(filename.split(" - ")[1])
    new_song.artist.name = file_name.split(" - ")[0]
    new_song
  end
end
