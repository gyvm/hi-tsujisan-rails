require 'rails_helper'

RSpec.describe "EventApi", type: :request do
  # 現状はPostmanで担保する
  describe "#create" do
    it 'creates a event' do
        post api_v1_events_path, params: {
          event: {
          name: "テストイベント",
          description: "",
          possible_dates: ["2021-09-30", "2021-10-01", "2021-10-02"]
        }}
        json = JSON.parse(response.body)
        expect(json["status"]).to eq "SUCCESS"
    end
  end

  describe "#show" do
    it "get event info" do
      url_1 = FactoryBot.create(:url).url
      get api_v1_event_path(id: url_1)
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json["status"]).to eq "SUCCESS"
    end
  end
end
