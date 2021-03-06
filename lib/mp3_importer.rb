class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def import
    self.files.each{ |filename| Song.new_by_filename(filename) }
  end

  def files
     Dir.entries(path).select {|file| file.include?(".mp3")}
  end
end
