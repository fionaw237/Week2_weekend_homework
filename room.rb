class Room

  attr_reader :guests

  def initialize()
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

end
