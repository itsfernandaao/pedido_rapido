require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { is_expected.to have_many(:orders) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to define_enum_for(:status).with_values(inactive: 0, active: 1)}
  it { is_expected.to define_enum_for(:profile).with_values(admin: 0, waiter: 1, cook: 2)}
end