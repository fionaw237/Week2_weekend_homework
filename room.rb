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

  def check_in(guests)
    @guests.concat(guests)
  end

  def check_out()
    @guests.clear()
  end

  def add_song(song)
    @playlist << song
  end

  def check_capacity(guests)
    if guests.count() <= @max_guests
      return true
    else
      return false
    end
  end


end
