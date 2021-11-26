FactoryBot.define do
  factory :guest do
    nickname { 'テストユーザ' }
    comment { 'テストコメント' }
    event_id { FactoryBot.create(:event).id }
  end
end
