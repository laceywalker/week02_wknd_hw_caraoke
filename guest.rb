class Guest

  attr_reader :guest_name, :guest_wallet, :guest_favorite_song

  def initialize(option)
    @guest_name = option[:name]
    @guest_wallet = option[:wallet]
    @guest_favorite_song = option[:favorite_song][:song]
  end


  def pay_karaoke_fee
    karaoke_entry_fee = 10
    @guest_wallet -= karaoke_entry_fee
  end


  def guest_favorite_song_and_cheer(song_list) #remember that song and song-to-play are DIFFERENT placeholders
      for song in song_list
        if song.song_title == @guest_favorite_song
          return "Woo! #{song.song_title} is my jam!"
        end
      end
      return "I don't like these songs"
  end



end
