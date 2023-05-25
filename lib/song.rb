class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count

    # with #tally
    # @@artists.tally
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count

    # with #tally
    # @@genres.tally
  end
end

s1 = Song.new("Solomon Mkubwa", "Flame wa Amani", "Gospel")
s2 = Song.new("Angel Benard", "Nikumbushe Wema Wako", "Gospel")
s3 = Song.new("Christina Susho", "Susha Nyavu", "Gospel")
s1 = Song.new("Willy Pozze", "Maria", "Secular")
s2 = Song.new("Azawi", "Party Mood", "Secular")
s3 = Song.new("Vinka", "Bailando", "Secular")

puts Song.genre_count