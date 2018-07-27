class Room

  attr_reader :max_guests, :entry_fee

  def initialize(max_guests, entry_fee)
    @max_guests = max_guests
    @entry_fee = entry_fee
    @guests = []
    @playlist = []
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
  end


end
