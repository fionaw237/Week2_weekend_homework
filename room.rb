class Room

  attr_reader :max_guests, :entry_fee, :guest_money_spent, :tab

  def initialize(max_guests, entry_fee)
    @max_guests = max_guests
    @entry_fee = entry_fee
    @guests = []
    @playlist = []
    @guest_money_spent = 0
    @tab = 0
  end

  def guest_count()
    return @guests.count()
  end

  def number_of_songs()
    return @playlist.count
  end

  def check_in(guest)
    unless room_full?()
      @guests << guest
      charge_guest(guest)
    else
      return "Sorry, room is full!"
    end
  end

  def check_out(guest)
    @guests.delete(guest)
  end

  def check_out_all_guests()
    @guests.clear()
  end

  def add_song(song)
    @playlist << song
  end

  def room_full?()
    return @guests.count() == @max_guests
  end

  def charge_guest(guest)
    guest.pay_for_room(@entry_fee)
    @guest_money_spent += @entry_fee
  end

  def favourite_song_in_playlist?(guest)
    if @playlist.include?(guest.favourite_song())
      guest.cheer()
    else
      return ":("
    end
  end



end
