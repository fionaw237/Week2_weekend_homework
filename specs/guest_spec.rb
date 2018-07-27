require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Fiona Wilson")
  end

  def test_has_name()
    assert_equal("Fiona Wilson", @guest.name())
  end

end
