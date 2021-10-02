FactoryBot.define do
  factory :url do
    url { 'NAksGvDTr71632240249' }
    event_id { FactoryBot.create(:event).id }
  end
end
