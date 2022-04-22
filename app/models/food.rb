class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: {maximum: 150}
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }

  has_many :categories, through: :menu_categories
  has_many :orders
  has_many :orders, through: :menu_orders

  
  def self.by_letter(letter)
    where("name LIKE ?", "#{letter}%").order(:name)
  end
end