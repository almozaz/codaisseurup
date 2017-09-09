class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  def total_price
    user = 1
    self.price = event.price * (self.guest_count.to_f + user)
  end
end
