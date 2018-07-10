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
    puts @@all.size
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
    new_artist = self.all.find{|artist| artist.name ==name}
    if new_artist == nil
      new_artist = self.new(name)
    end
    new_artist.save
    new_artist
  end

  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end
end
