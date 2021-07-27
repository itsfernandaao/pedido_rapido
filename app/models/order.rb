class Order < ApplicationRecord
  belongs_to :employee
  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products

  validates :table, presence: true, numericality: { only_integer: true, greater_than: 0 }
  enum status: { canceled: 0, open: 1, closed: 2 }
end
