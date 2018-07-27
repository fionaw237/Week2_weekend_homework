class Guest

  attr_reader :name, :money

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def pay_for_room(entry_fee)
    @money -= entry_fee
  end

  def get_favourite_song_artist()
    return @favourite_song[0]
  end

  def get_favourite_song_title()
    return @favourite_song[1]
  end

  def cheer()
    return "WOOHOO!"
  end



end
