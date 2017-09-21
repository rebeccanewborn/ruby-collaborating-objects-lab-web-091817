class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    var = (@@all.find do |artist|
      artist.name == name
    end)

    if var != nil
      var
    else
      # artist = self.new(name)
      # artist.save
      # artist
      self.new(name).tap{|artist| artist.save}

    end

    # @@all.find
  end

end
