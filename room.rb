class Room

  attr_reader :max_guests

  def initialize(max_guests)
    @max_guests = max_guests
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
    @guests << guest
  end

  def check_out()
    @guests.clear()
  end

  def add_song(song)
    @playlist << song
  end

  def room_full?()
    return @guests.count() < @max_guests ? false : true
  end


end
