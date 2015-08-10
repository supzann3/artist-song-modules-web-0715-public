require_relative'concerns/memorable'
require_relative'concerns/findable'
class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  attr_accessor :name
  attr_reader :artist
  @@songs = []

  def initialize
    @@songs << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name}
  # end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  # def self.reset_all
  #   @@songs.clear
  # end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  # def self.count
  #   self.all.count
  # end

  def self.all
    @@songs
  end
end
