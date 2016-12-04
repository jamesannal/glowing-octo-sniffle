require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")

class SongSpec < MiniTest::Test

  def test_can_create_song
    song = Songs.new("James")
    assert_equal("James", song.title)
  end

end