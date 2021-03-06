class Song

  attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count +=1
      @@genres << genre
      @@artists << artist
      @@songs << name
    end

    @@count = 0
    @@genres = []
    @@artists = []
    @@songs = []


    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq
    end

    def self.artists
      @@artists.uniq
    end

    def self.genre_count
        hash = Hash.new(0)
        @@genres.each do |genre|
          hash[genre]+=1
        end
        hash
    end

    def self.artist_count
      hash = Hash.new(0)
      @@artists.each do |artist|
        hash[artist]+=1
      end
      hash
    end

end
