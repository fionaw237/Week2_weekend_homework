require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Fiona Wilson", 10, ["Neck Deep", "Motion Sickness"])
  end

  def test_has_name()
    assert_equal("Fiona Wilson", @guest.name())
  end

  def test_has_money()
    assert_equal(10, @guest.money())
  end

  def test_has_favourite_song()
    result = @guest.get_favourite_song_artist() + ", " + @guest.get_favourite_song_title()
    assert_equal("Neck Deep, Motion Sickness", result)
  end

  def test_can_pay_for_room()
    @guest.pay_for_room(5)
    assert_equal(5, @guest.money())
  end

  def test_can_cheer()
    assert_equal("WOOHOO!", @guest.cheer())
  end

end
