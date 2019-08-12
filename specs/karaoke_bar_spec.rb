require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../guest')
require_relative('../song')
class KaraokiBarTest < MiniTest::Test

  def setup
    @karaoke_bar = KaraokeBar.new('The Karaoke Bar', @room, 0)
    # @room = Room.new('Rap', 10)
    # @guest = Guest.new('Janice', )
  end

  def test_karaoke_bar_name
    assert_equal('The Karaoke Bar', @karaoke_bar.name())
  end

  def test_take_booking
    assert_equal(50, @till_balance)

  end



end
