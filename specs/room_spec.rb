require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")

class RoomTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Fiona Wilson", 10, ["Neck Deep", "Motion Sickness"])
    @guest2 = Guest.new("Joanna Wilson", 15, ["Biffy Clyro", "Folding Stars"])
    @guest3 = Guest.new("Louise Wilson", 20, ["Green Day", "Basket Case"])
    @guests = [@guest1, @guest2, @guest3]

    @song1 = Song.new("Neck Deep", "Motion Sickness")
    @song2 = Song.new("Sum 41", "Fat Lip")

    @room1 = Room.new(2, 10)
    @room2 = Room.new(3, 5)
  end

  def test_room_starts_empty()
    assert_equal(0, @room1.guest_count())
  end

  def test_playlist_starts_empty()
    assert_equal(0, @room1.number_of_songs())
  end

  def test_has_max_number_of_guests()
    assert_equal(2, @room1.max_guests())
  end

  def test_has_entry_fee()
    assert_equal(10, @room1.entry_fee())
  end

  def test_can_check_in_guests()
    @guests.each {|guest| @room2.check_in(guest)}
    assert_equal(3, @room2.guest_count())
  end

  def test_can_check_out_one_guest()
    @room1.check_in(@guest1)
    @room1.check_in(@guest2)
    @room1.check_out(@guest1)
    assert_equal(1, @room1.guest_count())
  end

  def test_can_check_out_all_guests()
    @room1.check_out_all_guests()
    assert_equal(0, @room1.guest_count())
  end

  def test_add_songs_to_playlist()
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    assert_equal(2, @room1.number_of_songs())
  end

  def test_room_full__true()
    @room1.check_in(@guest1)
    @room1.check_in(@guest2)
    assert_equal(true, @room1.room_full?())
  end

  def test_room_full__false()
    @room2.check_in(@guest1)
    @room2.check_in(@guest2)
    assert_equal(false, @room2.room_full?())
  end

  def test_cannot_check_in_guest_if_room_full
    @guests[0..1].each {|guest| @room1.check_in(guest)}
    check_room_full = @room1.check_in(@guest3)
    assert_equal(2, @room1.guest_count())
    assert_equal("Sorry, room is full!", check_room_full)
  end

  def test_charge_guest_for_room()
    @room1.charge_guest(@guest2)
    assert_equal(5, @guest2.money())
  end

  def test_check_in_guest_and_charge_for_room()
    @room2.check_in(@guest1)
    assert_equal(5, @guest1.money())
  end

end
