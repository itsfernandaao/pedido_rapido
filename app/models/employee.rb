# frozen_string_literal: true

class Employee < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :orders
  validates :name, presence: true
  enum profile: { admin: 0 , waiter: 1, cook: 2 }
  enum status: { inactive: 0, active: 1 }
end
