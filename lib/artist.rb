class Artist
  attr_accessor  :songs, :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

def self.all
  @@all
end

def save
  @@all << self
end

def self.find_or_create_by_name(name)
  artist_present = all.find{|artist| artist.name == name}
  if !artist_present
    artist = Artist.new(name)
    artist.save
    artist 
  else
    artist_present
  end
end

def print_songs
  songs.each do |song|
    puts song.name
  end
end


end
