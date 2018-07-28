require("minitest/autorun")
require("minitest/rg")
require_relative("../bar")
require_relative("../room")
require_relative("../guest")
require_relative("../song")

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




end
