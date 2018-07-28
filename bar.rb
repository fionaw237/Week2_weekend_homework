class Bar

  def initialize(rooms)
    @rooms = rooms
  end

  def room_count()
    return @rooms.count()
  end

  def sell_drink(room, guest, drink)
    guest.buy_drink(drink)
    room.add_to_tab(drink)
  end

end
