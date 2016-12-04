require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class RoomSpec < MiniTest::Test

  def test_can_create_room
    room = Room.new()
    assert_equal(Room, room.class)
  end

  def test_room_has_no_guests
    room = Room.new
    assert_equal(0, room.number_of_guests)
  end

  def test_can_add_guest
    room = Room.new()
    guest = Guest.new("James", 20)
    room.add_guest(guest)
    assert_equal(1, room.number_of_guests)
  end

  def test_can_check_customer_money
    room = Room.new()
    guest = Guest.new("James", 20)
    room.add_guest(guest)
    assert_equal(20, guest.cash())
  end

  def test_make_them_pay_for_entry
    room = Room.new()
    guest = Guest.new("James", 20)
    guest.pay_entry()
    assert_equal(15, guest.cash)
  end

  def test_can_add_two_guests
    room = Room.new()
    guest1 = Guest.new("James", 20)
    guest2 = Guest.new("Zach", 12)

    room.add_guest(guest1)
    room.add_guest(guest2)

    assert_equal(2, room.number_of_guests)
  end

  def test_can_add_five_guests
    room = Room.new()
    guest1 = Guest.new("James", 20)
    guest2 = Guest.new("Zach", 12)
    guest3 = Guest.new("Nina", 23)
    guest4 = Guest.new("Harold", 25)
    guest5 = Guest.new("Andrea", 15)
    guest6 = Guest.new("Thea", 5)

    room.add_guest(guest1)
    room.add_guest(guest2)
    room.add_guest(guest3)
    room.add_guest(guest4)
    room.add_guest(guest5)
    room.add_guest(guest6)
    assert_equal(4, room.number_of_guests)
  end
    
  def test_can_check_out_guest
    room = Room.new()
    guest = Guest.new("James", 20)
    room.add_guest(guest)
    removed_guest = room.remove_guest(guest)
    assert_equal(0, room.number_of_guests)
    assert_equal("James", removed_guest.name)
  end

  def test_room_has_no_songs
    room = Room.new
    assert_equal(0, room.number_of_songs)
  end

  def test_can_add_song
    room = Room.new
    song = Songs.new("Superbeast")
    room.add_song(song)
    assert_equal(1, room.number_of_songs)
  end
end