class MP3Importer
  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
    @files = []
  end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
