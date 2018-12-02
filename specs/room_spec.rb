require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @room_1 = Room.new({genre: "rock", capacity: 10})
  end


  def test_room_genre
    assert_equal("rock", @room_1.room_genre)
  end

  def test_room_capacity
    assert_equal(10, @room_1.room_capacity)
  end






end
