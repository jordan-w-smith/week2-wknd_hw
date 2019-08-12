class Guest
  attr_reader :name, :party_size
  attr_accessor :wallet_balance
  def initialize(name, party_size, wallet_balance)
    @name = name
    @party_size = party_size
    @wallet_balance = wallet_balance
  end

  def pay_for_booking(room_cost)
    if @wallet_balance >= room_cost
      @wallet_balance -= room_cost
    else
     p "insufficient funds"
    end
  end
end
