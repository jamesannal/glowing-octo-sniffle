class Room

  attr_accessor :room_array, :song_list

  def initialize()
    @room_array = []
    @song_list = []
  end

  def number_of_guests
    return @room_array.count()
  end

  def add_guest(name)
    if number_of_guests <= 3
      @room_array.push(name)
    else
      return "Room currently full."
    end
  end

  def remove_guest(name)
    return @room_array.delete(name)
  end

  def number_of_songs
    return @song_list.count
  end

  def add_song(song)
    @song_list.push(song)
  end

 

end