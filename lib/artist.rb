require "pry"
class Artist 
  attr_accessor :name, :song, :artist, :new_song
 
 @@song_count = 0
  
  def initialize(name)
    @name = name
   end
 
 def songs
  Song.all.select { |song| song.artist == self }
 #since song belongs to artist, we can call song.artist and it shoudl return the instnace of the artist that it's associated with
 end
 
 def add_song_by_name(name)
   new_song = Song.new(name) 
   self.songs << new_song 
   new_song.artist = self 
   @@song_count += 1 
 end
 
  
 def self.song_count
  Song.all.count
 end
 
  def add_song(song)
  song.artist = self
end

end

 #ary = [1, 2, 4, 2]
#ary.count                  #=> 4
#ary.count(2)               #=> 2
#ary.count { |x| x%2 == 0 } #=> 3

 # Select Returns a new array containing all elements of ary for which the given block returns a true value.
 #[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]
 
 #so our songs method for ARtists, should look through that array and return all the ones that have associations with the artist that we are calling the method on
   
 #Line 17 :we are defining a new song to a new instance of a song in general from the song class, every time a new song class instance is created we are calling it through putting an argument of a name
 
 #Line 18 now the Artist's songs are receiving the new song instance 
 
 #line 19 then the new song variable is called on the artist which is equal to each artist class
 # line 20 each time we make a new song it is incremented by a 1 because only one song goes in at a time
 
 