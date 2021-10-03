require 'rails_helper'

RSpec.describe "GuestApis", type: :request do
  describe "GET /guest_apis" do
    describe "#create" do
      it 'create a guest data' do
          url_1 = FactoryBot.create(:url)
          possible_date = FactoryBot.create(:possible_date, event_id: url_1.event_id)

          post api_v1_guests_path, params: {
            url: url_1.url,
            guest: {
            nickname: "テストユーザ",
            comment: "テストコメント",
            possible_dates: {"11": 1, "12": 2, "13": 3, "14": 3, "15": 1}
        }}
          json = JSON.parse(response.body)
          expect(json["status"]).to eq "SUCCESS"
      end
    end
  end
end
