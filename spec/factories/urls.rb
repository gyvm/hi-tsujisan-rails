FactoryBot.define do
  factory :url do
    sequence(:url) { |n| "NAksGvDTr71632240249#{n}" }
    event_id { FactoryBot.create(:event).id }
  end
end
