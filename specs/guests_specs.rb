require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")

class GuestSpec < MiniTest::Test

  def setup
    @guest = Guest.new("James", 20)
  end

  def test_can_create_guest
    assert_equal("James", @guest.name)
  end

  # def test_count_guests
  #   assert_equal(1, @guest.guest_count)
  # end
end