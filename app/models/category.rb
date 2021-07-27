class Category < ApplicationRecord
  has_many :products, dependent: :restrict_with_error
  validates :title, presence: true, uniqueness: { case_sensitive: false }
end
