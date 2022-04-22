class Order < ApplicationRecord
  has_many :food, through: :order_details
  
end
