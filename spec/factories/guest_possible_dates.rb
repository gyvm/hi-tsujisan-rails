FactoryBot.define do
  factory :guest_possible_date do
    status { 1 }
    guest_id { FactoryBot.create(:guest).id }
    possible_date_id { FactoryBot.create(:possible_date).id }

    trait :status_is_string do
      status { '1' }
    end
  end
end
