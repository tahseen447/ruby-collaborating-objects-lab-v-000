class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def import
    puts filenames
    filenames.each{ |filename| Song.new_by_filename(filename) }
  end

  def files
    files = Dir.entries(path).select {|file| file.include?(".mp3")}
    files
  end
end
