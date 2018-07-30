class Guest

  attr_reader :name, :money, :favourite_song

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def pay_for_room(entry_fee)
    #should check that they can afford to pay?
    @money -= entry_fee
  end

  def cheer()
    return "WOOHOO!"
  end

  def buy_drink(drink)
    #should check they can afford to pay
    @money -= drink.price()
  end

  #could add a pay tab function?

end
