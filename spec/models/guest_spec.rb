require 'rails_helper'

RSpec.describe Guest, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:guest)).to be_valid
  end

  it "is invalid without a nickname" do
    guest = FactoryBot.build(:guest, nickname: nil)
    guest.valid?
    expect(guest.errors[:nickname]).to include("can't be blank")
  end

  it "is invalid without a event_id" do
    guest = FactoryBot.build(:guest, event_id: nil)
    guest.valid?
    expect(guest.errors[:event_id]).to include("can't be blank")
  end
end
