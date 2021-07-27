FactoryBot.define do
  factory :order do
    client { "MyString" }
    table { 1 }
    status { :active }
    employee
  end
end
