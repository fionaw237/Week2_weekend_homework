class Guest

  attr_reader :name, :money

  def initialize(name, money)
    @name = name
    @money = money
  end

  def pay_for_room(entry_fee)
    @money -= entry_fee
  end

end
