require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')

class TestRoom < MiniTest::Test

  def setup
    @guest_1 = Guest.new({name: "Jasmine", wallet: 20})
    @room_1 = Room.new({genre: "rock", capacity: 10, people_in_room: []})
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






end
