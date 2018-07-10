class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name=nil)
    @name = nil
    @@all << self
  end

  def self.new_by_filename(filename)
    new_song = self.new
  #  song.name = file_name.split(" - ")[1]
  #  song.artist.name = file_name.split(" - ")[0]
    song
  end
end
