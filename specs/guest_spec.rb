require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest_1 = Guest.new({name: "Jimbo", wallet: 100})
  end


  def test_guest_name
    assert_equal("Jimbo", @guest_1.guest_name)
  end

  def test_guest_wallet
    assert_equal(100, @guest_1.guest_wallet)
  end

  def test_pay_karaoke_fee
    assert_equal(90, @guest_1.pay_karaoke_fee)
  end



end
