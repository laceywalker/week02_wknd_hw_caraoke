require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song_1 = Song.new({artist: "David Bowie", song_title: "Heroes"})
  end

  def test_song_artist
    assert_equal("David Bowie", @song_1.song_artist)
  end

  def test_song_title
    assert_equal("Heroes", @song_1.song_title)
  end



end
