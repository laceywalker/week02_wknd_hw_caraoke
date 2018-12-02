class Room

  attr_reader :room_genre, :room_capacity, :people_in_room

  def initialize(options)
    @room_genre = options[:genre]
    @room_capacity = options[:capacity]
    @people_in_room = options[:people_in_room]
  end

  def check_in_guest(guest)
    @people_in_room << guest
  end

  def check_out_guest(guest)
    @people_in_room.delete(guest)
  end




end
