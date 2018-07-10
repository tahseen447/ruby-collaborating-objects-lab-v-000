class Artist
  attr_accessor :name
  @all = []

  def initialize(name)
    @name = name
    @all << self
  end

  def save
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Songs.all.select {|song| song.artist = self}
  end

  def self.find_or_create_by_name(name)

  end

  def print_songs
    @songs
  end
end
