require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { build(:product) } 
  it { is_expected.to belong_to(:category) }
  it { is_expected.to have_many(:order_products).dependent(:destroy) }
  it { is_expected.to have_many(:orders).through(:order_products)}
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_numericality_of(:price).is_greater_than(0) }
  it { is_expected.to define_enum_for(:status).with_values(inactive: 0, active: 1)}
end
