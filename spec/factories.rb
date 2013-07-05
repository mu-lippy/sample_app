FactoryGirl.define do
  factory :user do
    name	"Jimmy James"
    email	"jim@james.com"
    password "foobar"
    password_confirmation "foobar"
  end
end