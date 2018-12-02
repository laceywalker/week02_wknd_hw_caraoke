class Guest

  attr_reader :guest_name, :guest_wallet

  def initialize(option)
    @guest_name = option[:name]
    @guest_wallet = option[:wallet]
  end


  def pay_karaoke_fee
    karaoke_entry_fee = 10
    @guest_wallet -= karaoke_entry_fee
  end





end
