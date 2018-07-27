require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("Neck Deep", "Motion Sickness")
  end

  def test_has_artist()
    assert_equal("Neck Deep", @song.artist())
  end

  def test_has_title()
    assert_equal("Motion Sickness", @song.title())
  end

end
