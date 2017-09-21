require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.entries(path).select do |file|
      file.end_with?('.mp3')
    end
  end

  def import
    files
    # binding.pry
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
