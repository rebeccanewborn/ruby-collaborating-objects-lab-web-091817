require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    array = filename.split("-")
    # binding.pry
    name = array[1].strip #song name
    new_song = self.new(name) #new song instance
    new_artist = Artist.find_or_create_by_name(array[0].strip)
    new_song.artist = new_artist
    new_artist.songs << new_song
    new_song
  end


end
