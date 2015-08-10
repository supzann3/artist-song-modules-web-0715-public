require_relative'concerns/memorable'
require_relative'concerns/findable'
require 'pry'
class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  attr_accessor :name
  attr_reader :songs
  @@artists = []

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name}
  # end

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   @@artists.count
  # end

  def add_song(song)
    @songs << song
    # brinding.pry
    # song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
