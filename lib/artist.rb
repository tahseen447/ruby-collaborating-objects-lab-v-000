class Artist
  attr_accessor :name
  @all = []

  def initialize(name)
    @name = name
    @all << self
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Songs.all.select {|song| song.artist = self}
  end

  def print_songs
    Song.all.inspect
  end
end
