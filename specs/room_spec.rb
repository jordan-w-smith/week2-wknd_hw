require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new('R&B', 5, 0, ['song 1', 'song_2', 'song_3'])
  end

  def test_genre
    assert_equal('R&B', @room.genre())
  end

  def test_room_capacity
    assert_equal(5, @room.capacity())
  end

  def test_add_new_song
    assert_equal(1, @room.playlist.count)
  end

end
