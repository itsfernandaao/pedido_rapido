require 'rails_helper'

RSpec.describe Order, type: :model do
  it { is_expected.to belong_to(:employee) }
  it { is_expected.to have_many(:order_products).dependent(:destroy) }
  it { is_expected.to have_many(:products).through(:order_products)}
  it { is_expected.to validate_presence_of(:table) }
  it { is_expected.to validate_numericality_of(:table).is_greater_than(0) }
  it { is_expected.to validate_numericality_of(:table).only_integer }
  it { is_expected.to define_enum_for(:status).with_values(canceled: 0, open: 1, closed: 2)}
end
