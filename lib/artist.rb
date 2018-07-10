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

  def self.find_or_create_by_name(name)
    new_song = self.class.all.find{|song| song.name == name}
  end

  def print_songs
    @songs
  end
end
