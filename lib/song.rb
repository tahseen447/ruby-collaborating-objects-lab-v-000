class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song.artist.name = filename.split(" - ")[0]
  end

end
