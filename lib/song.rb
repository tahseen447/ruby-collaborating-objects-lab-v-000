class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    song.artist.name = file_name.split(" - ")[0]
    song
  end
end
