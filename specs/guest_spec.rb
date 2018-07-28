require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")
require_relative("../drink")


class GuestTest < MiniTest::Test

  def setup()
    @song = Song.new("Neck Deep", "Motion Sickness")
    @guest = Guest.new("Fiona Wilson", 10, @song)
    @drink = Drink.new("Irn Bru", 1.5)#, 1.0)
  end

  def test_has_name()
    assert_equal("Fiona Wilson", @guest.name())
  end

  def test_has_money()
    assert_equal(10, @guest.money())
  end

  def test_has_favourite_song()
    result = @guest.favourite_song.artist() + ", " + @guest.favourite_song.title()
    assert_equal("Neck Deep, Motion Sickness", result)
  end

  def test_can_pay_for_room()
    @guest.pay_for_room(5)
    assert_equal(5, @guest.money())
  end

  def test_can_cheer()
    assert_equal("WOOHOO!", @guest.cheer())
  end

  def test_can_buy_drink()
    @guest.buy_drink(@drink)
    assert_equal(8.5, @guest.money())
  end

end
