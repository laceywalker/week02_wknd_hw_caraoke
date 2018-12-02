class Guest

  attr_reader :guest_name, :guest_wallet

  def initialize(option)
    @guest_name = option[:name]
    @guest_wallet = option[:wallet]
  end






end
