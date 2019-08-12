require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class GuestTest < MiniTest::Test
  def setup
    @guest = Guest.new('Stacy', 3, 30)
  end

  def test_name
    assert_equal('Stacy', @guest.name())
  end

  def test_party_size
    assert_equal(3, @guest.party_size())
  end

  def test_wallet_ballance
    assert_equal(30, @guest.wallet_balance())
  end

end
