class OrderDetail < ApplicationRecord
  belongs_to :order, inverse_of: :order_degailss
  belongs_to :product

  validates_presence_of :food
  validates_presence_of :order

  # def calculate_total
  #   total = 0.0
  #   total = self.food.price * self.quantity
  # end

end
