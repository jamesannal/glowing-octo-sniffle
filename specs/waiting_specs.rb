require('minitest/autorun')
require('minitest/rg')
require_relative('../waiting')
require_relative('../guests')

class WaitingSpec < MiniTest::Test

  def test_can_create_waiting_area
    waiting = Waiting.new
    assert_equal(Waiting, waiting.class)
  end

  def test_waiting_has_no_fish
    waiting = Waiting.new
    assert_equal(0, waiting.people_waiting)
  end
end