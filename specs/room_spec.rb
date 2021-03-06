require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < MiniTest::Test

  def setup
    @song_1 = Song.new({artist: "Gwar", song_title: "Saddam A Go Go"})
    @song_2 = Song.new({artist: "Metallica", song_title: "Master of Puppets"})
    @song_3 = Song.new({artist: "Depeche Mode", song_title: "Never Let Me Down"})
    @song_4 = Song.new({artist: "Nico", song: "Chelsea Girls"})
    @guest_1 = Guest.new({name: "Jasmine", wallet: 20, favorite_song: {artist: "Nico", song: "Chelsea Girls"}})
    @guest_2 = Guest.new({name: "Bobbert", wallet: 35, favorite_song: {artist: "Tears for Fears", song: "Shout"}})
    @guest_3 = Guest.new({name: "Raisin", wallet: 50, favorite_song: {artist: "Michael Jackson", song: "PYT"}})
    @room_1 = Room.new({genre: "rock", capacity: 10, people_in_room: [], song_list: [@song_1, @song_2, @song_4]})

    @guests = [@guest_1, @guest_2, @guest_3]
    @songs = [@song_1, @song_2, @song_3, @song_4]
  end


  def test_room_genre
    assert_equal("rock", @room_1.room_genre)
  end

  def test_room_capacity
    assert_equal(10, @room_1.room_capacity)
  end

  def test_people_in_room
    assert_equal(0, @room_1.people_in_room.count)
  end

  def test_check_in_guest
    @room_1.check_in_guest(@guest_1)
    assert_equal(1, @room_1.people_in_room.count)
  end

  def test_check_out_guest
    @room_1.check_out_guest(@guest_1)
    assert_equal(0, @room_1.people_in_room.count)
  end

  def test_check_song_list
    assert_equal(3, @room_1.room_song_list.count)
  end

  def test_add_song_to_list
    @room_1.add_song_to_list(@song_3)
    assert_equal(4, @room_1.room_song_list.count)
  end

  def test_capacity_full_deny_check_in
    @room_1.check_in_guest(@guest_1)
    assert_equal(9, @room_1.room_capacity)
  end

  def test_play_song
    assert_equal("playing Saddam A Go Go", @room_1.play_song(@song_1))
  end

  

end
