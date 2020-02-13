class Song 
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists 
    @@artists.uniq!
  end

  def self.genre_count
    puts "two genre? #{@@genres}"
    genre_list = {}
    @@genres.each do |genre|
      if !genre_list.has_key?(genre)
        genre_list[genre] = 1
      else
        genre_list[genre] += 1
      end
    end
    genre_list
  end

end