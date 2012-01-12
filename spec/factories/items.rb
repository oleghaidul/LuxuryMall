# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    category_id 1
    brand_id 1
    season_id 1
    structure "MyString"
    description "MyText"
    price 1
    discount 1
    sex "MyString"
  end
end
