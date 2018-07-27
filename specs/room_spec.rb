require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")

class RoomTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Fiona Wilson")
    @guest2 = Guest.new("Joanna Wilson")
    @guests = [@guest1, @guest2]

    @song1 = Song.new("Neck Deep", "Motion Sickness")
    @song2 = Song.new("Sum 41", "Fat Lip")
    @song3 = Song.new("State Champs", "Dead and Gone")

    @room = Room.new()
  end

  def test_room_starts_empty()
    assert_equal(0, @room.guest_count())
  end

  def test_playlist_starts_empty()
    assert_equal(0, @room.number_of_songs())
  end

  def test_can_check_in_guests()
    @room.check_in(@guests)
    assert_equal(2, @room.guest_count())
  end

  def test_can_check_out_guests()
    @room.check_out()
    assert_equal(0, @room.guest_count())
  end


end
