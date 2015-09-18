FactoryGirl.define do

  factory :user do
  	sequence :email do |n|
  		"#{n}@gmail.com"
  	end

  		password "haha1777"
  		password_confirmation "haha1777"
  	end

  factory :comment do
    message 'check is it working'
    rating '3_stars'
    association :user
    association :place
  end

  factory :place do
    name "Lulu's Bakery"
  	address "Boston, MA, 02114"
    description "Try the cupcakes"
    latitude(42.3631519)
    longitude(-71.056098)
  	association :user
  end



end