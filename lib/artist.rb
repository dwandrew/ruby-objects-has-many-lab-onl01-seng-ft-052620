require_relative "song.rb"
require 'pry'

class Artist
attr_reader :name    

    def initialize(name)
        @name=name
    end


    def songs   
    Song.all.map{|song| song if song.artist == self}
    end

    def add_song(song)
    song.artist = self
    end

    def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
    end

    def self.song_count
    Song.all.length
    end
end