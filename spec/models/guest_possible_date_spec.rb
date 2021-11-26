require 'rails_helper'

RSpec.describe GuestPossibleDate, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:guest_possible_date)).to be_valid
  end

  it 'is invalid without a status' do
    guest_possible_date = FactoryBot.build(:guest_possible_date, status: nil)
    guest_possible_date.valid?
    expect(guest_possible_date.errors[:status]).to include("can't be blank")
  end

  it 'is invalid with string type status' do
    guest_possible_date = FactoryBot.create(:guest_possible_date, :status_is_string)
    expect(guest_possible_date.is_a?(String)).to be_falsey
  end

  it 'is invalid without a guest_id' do
    guest_possible_date = FactoryBot.build(:guest_possible_date, guest_id: nil)
    guest_possible_date.valid?
    expect(guest_possible_date.errors[:guest_id]).to include("can't be blank")
  end

  it 'is invalid without a possible_date_id' do
    guest_possible_date = FactoryBot.build(:guest_possible_date, possible_date_id: nil)
    guest_possible_date.valid?
    expect(guest_possible_date.errors[:possible_date_id]).to include("can't be blank")
  end
end
