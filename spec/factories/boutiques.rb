# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :boutique do |b|
  	b.name 		"Test 1"
  	b.url_bout 	"test1"
  	b.phone 	"+375292588526"
  	b.phone2	"+3758956234"
  	b.address	"24 Shishkin St., Minsk"
  	b.director	"Ivanov P.P"
  end
end
