class Room

  attr_reader :room_genre, :room_capacity, :people_in_room, :room_song_list

  def initialize(options)
    @room_genre = options[:genre]
    @room_capacity = options[:capacity]
    @people_in_room = options[:people_in_room]
    @room_song_list = options[:song_list]
  end

  def check_in_guest(guest)
    @people_in_room << guest
  end

  def check_out_guest(guest)
    @people_in_room.delete(guest)
  end

  def add_song_to_list(song)
    @room_song_list << song
  end




end
