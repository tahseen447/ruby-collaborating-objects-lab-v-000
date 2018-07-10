class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
    self
  end

  def self.find_or_create_by_name(name)
  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end
end
