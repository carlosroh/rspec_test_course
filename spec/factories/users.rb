# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "chuck_norris"
    first_name "chuck"

    factory :invalid_user do
      username nil
      first_name nil
    end
  end
end
