require("minitest/autorun")
require("minitest/rg")
require_relative("../bar")
require_relative("../room")
require_relative("../guest")
require_relative("../song")
require_relative("../drink")

class BarTest < MiniTest::Test

  def setup()

    @room1 = Room.new(2, 10)
    @room2 = Room.new(3, 5)
    @rooms = [@room1, @room2]
    @bar = Bar.new(@rooms)
  end

  def test_has_rooms()
    assert_equal(2, @bar.room_count())
  end

  def test_sell_drink()
    song = Song.new("Neck Deep", "Motion Sickness")
    guest = Guest.new("Fiona Wilson", 10, song)
    drink = Drink.new("Irn Bru", 1.5)
    @bar.sell_drink(@room1, guest, drink)
    assert_equal(8.5, guest.money())
    assert_equal(1.5, @room1.tab())
  end




end
