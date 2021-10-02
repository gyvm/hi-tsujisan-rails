FactoryBot.define do
  factory :possible_date do
    date { '2021-10-01' }
    event_id { FactoryBot.create(:event).id }

    trait :yesterday do
      date { '2021-09-30' }
    end

    trait :tomorrow do
      date { '2021-10-02' }
    end
  end
end
