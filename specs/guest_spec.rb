require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Fiona Wilson", 10)
  end

  def test_has_name()
    assert_equal("Fiona Wilson", @guest.name())
  end

  def test_has_money()
    assert_equal(10, @guest.money())
  end

end
