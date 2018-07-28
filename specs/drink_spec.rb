require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")

class TestDrink < MiniTest::Test

  def setup
  @drink = Drink.new("Irn Bru", 1.5)#, 1.0)
  end

  def test_has_name()
    assert_equal("Irn Bru", @drink.name())
  end

  def test_has_price()
    assert_equal(1.5, @drink.price())
  end

  # def test_has_alcohol_level()
  #   assert_equal(1.0, @drink.alcohol_level())
  # end

end
