require 'pry'
class Song

  @@count = 0
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre)
    @@count += 1
    # binding.pry
    @@artists.push(artist)
    @@genres.push(genre)
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artist_hash = {}
    @@artists.each do |artist|
      if @@artist_hash[artist] == nil
        @@artist_hash[artist] = 1
      else @@artist_hash[artist] += 1
      end
    end
    @@artist_hash.keys
  end

  def self.genres
    @@genre_hash = {}
    @@genres.each do |genre|
      if @@genre_hash[genre] == nil
        @@genre_hash[genre] = 1
      else @@genre_hash[genre] += 1
      end
    end
    @@genre_hash.keys
  end

  def self.genre_count
    @@genre_hash = {}
    @@genres.each do |genre|
      if @@genre_hash[genre] == nil
        @@genre_hash[genre] = 1
      else @@genre_hash[genre] += 1
      end
    end
    @@genre_hash
  end

  def self.artist_count
    @@artist_hash = {}
    @@artists.each do |artist|
      if @@artist_hash[artist] == nil
        @@artist_hash[artist] = 1
      else @@artist_hash[artist] += 1
      end
    end
    @@artist_hash
  end

  attr_accessor :name, :artist, :genre

end
