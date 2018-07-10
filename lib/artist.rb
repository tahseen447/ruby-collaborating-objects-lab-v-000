class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @song = []
  end

  def add_song(song)
    song.artist = self
  end

end
