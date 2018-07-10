class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

  def files
    puts Dir.glob("#{path}/**/*.mp3")
  end
end
