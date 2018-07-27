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
    @guests << guest unless room_full?()
  end

  def check_out()
    @guests.clear()
  end

  def add_song(song)
    @playlist << song
  end

  def room_full?()
    return @guests.count() == @max_guests
  end


end
