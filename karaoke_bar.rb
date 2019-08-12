class KaraokeBar
  attr_reader :name, :room, :till_balance

  def initialize(name, room, till_balance)
    @name = name
    @room = []
    @till_balance = 0

  end


  room_cost_per_person = 10

  def check_in_guest(party_size)
    Room.guest_count += party_size
  end

  def take_booking(room_cost_per_person)
    if Guest.party_size <= Room.available_space
      Customer.pay_for_booking(room_cost_per_person)
      total_cost = cost_per_person * Customer.party_size()
      @till_balance += total_cost
    else
      p "Sorry there is not enough availability in this room."
    end
  end

  # take_booking(room_cost_per_person)


end
