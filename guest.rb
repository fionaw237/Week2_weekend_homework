class Guest

  attr_reader :name, :money, :favourite_song

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def pay_for_room(entry_fee)
    @money -= entry_fee
  end

  def cheer()
    return "WOOHOO!"
  end



end
