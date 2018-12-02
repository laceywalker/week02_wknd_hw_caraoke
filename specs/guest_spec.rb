require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestGuest < MiniTest::Test

  def setup
    @song_1 = Song.new({artist: "Gwar", song_title: "Saddam A Go Go"})
    @song_2 = Song.new({artist: "Metallica", song_title: "Master of Puppets"})
    @song_3 = Song.new({artist: "Depeche Mode", song_title: "Never Let Me Down"})
    @song_4 = Song.new({artist: "Nico", song: "Chelsea Girls"})
    @guest_1 = Guest.new({name: "Jimbo", wallet: 100, favorite_song: {artist: "MC Hammer", song: "Too Legit To Quit"}})
    @guest_2 = Guest.new({name: "Bort", wallet: 0, favorite_song: {artist: "Metallica", song: "Master of Puppets"}})
    @songs = [@song_1, @song_2, @song_3, @song_4]
  end


  def test_guest_name
    assert_equal("Jimbo", @guest_1.guest_name)
  end

  def test_guest_wallet
    assert_equal(100, @guest_1.guest_wallet)
  end

  def test_pay_karaoke_fee
    assert_equal(90, @guest_1.pay_karaoke_fee)
  end

  def test_check_favorite_song_title
    assert_equal("Too Legit To Quit", @guest_1.guest_favorite_song)
  end

  def test_check_favorite_song_and_cry
    assert_equal("I don't like these songs", @guest_1.guest_favorite_song_and_cheer(@songs))
  end

  def test_check_favorite_song_and_cheer
    assert_equal("Woo! Master of Puppets is my jam!", @guest_2.guest_favorite_song_and_cheer(@songs))
  end



  end
