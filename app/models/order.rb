class Order < ApplicationRecord
  has_many :foods, through: :order_details
  validates :email, format: { with: /[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com/i,
message: "Your message" }

  def calculate_total(price, quantity)
    total += price * quantity
    update_total(total)
  end
  
  def update_total(total)
    self.update(total_price: total)
  end
  
end
