# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :picture do
    name "MyString"
    item_id 1
    image_file_name "MyString"
    image_content_type "MyString"
    image_file_size 1
    image_updated_at "2012-01-12 21:41:49"
  end
end
